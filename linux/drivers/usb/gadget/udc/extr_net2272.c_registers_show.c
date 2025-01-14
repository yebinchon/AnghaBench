
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int name; } ;
struct net2272_ep {scalar_t__ stopped; scalar_t__ is_in; TYPE_2__ ep; int desc; } ;
struct TYPE_3__ {scalar_t__ speed; } ;
struct net2272 {int lock; struct net2272_ep* ep; TYPE_1__ gadget; int chiprev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef unsigned int ssize_t ;


 int ALT_NAK_OUT_PACKETS ;
 int AUTOVALIDATE ;
 int CONTROL_STATUS_PHASE_HANDSHAKE ;
 int DMAREQ ;
 int DMA_BUFFER_VALID ;
 int DMA_CONTROL_DACK ;
 int DMA_REQUEST ;
 int DMA_REQUEST_ENABLE ;
 int ENDPOINT_HALT ;
 int ENDPOINT_TOGGLE ;
 int EP_AVAIL0 ;
 int EP_AVAIL1 ;
 int EP_BUFF_STATES ;
 int EP_CFG ;
 int EP_IRQENB ;
 int EP_RSPSET ;
 int EP_STAT0 ;
 int EP_STAT1 ;
 int EP_TRANSFER0 ;
 int EP_TRANSFER1 ;
 int EP_TRANSFER2 ;
 int HIDE_STATUS_PHASE ;
 int INTERRUPT_MODE ;
 int IRQENB0 ;
 int IRQENB1 ;
 int IRQSTAT0 ;
 int IRQSTAT1 ;
 int LOCCTL ;
 int NAK_OUT_PACKETS_MODE ;
 int OURADDR ;
 unsigned int PAGE_SIZE ;
 int USBCTL0 ;
 int USBCTL1 ;
 int USB_HIGH_SPEED ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int VBUS_PIN ;
 int buf_state_string (int) ;
 struct net2272* dev_get_drvdata (struct device*) ;
 int driver_name ;
 int driver_vers ;
 int * ep_name ;
 int net2272_ep_read (struct net2272_ep*,int ) ;
 int net2272_read (struct net2272*,int ) ;
 unsigned int scnprintf (char*,unsigned int,char*,int,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int type_string (int) ;

__attribute__((used)) static ssize_t
registers_show(struct device *_dev, struct device_attribute *attr, char *buf)
{
 struct net2272 *dev;
 char *next;
 unsigned size, t;
 unsigned long flags;
 u8 t1, t2;
 int i;
 const char *s;

 dev = dev_get_drvdata(_dev);
 next = buf;
 size = PAGE_SIZE;
 spin_lock_irqsave(&dev->lock, flags);


 t = scnprintf(next, size, "%s version %s,"
  "chiprev %02x, locctl %02x\n"
  "irqenb0 %02x irqenb1 %02x "
  "irqstat0 %02x irqstat1 %02x\n",
  driver_name, driver_vers, dev->chiprev,
  net2272_read(dev, LOCCTL),
  net2272_read(dev, IRQENB0),
  net2272_read(dev, IRQENB1),
  net2272_read(dev, IRQSTAT0),
  net2272_read(dev, IRQSTAT1));
 size -= t;
 next += t;


 t1 = net2272_read(dev, DMAREQ);
 t = scnprintf(next, size, "\ndmareq %02x: %s %s%s%s%s\n",
  t1, ep_name[(t1 & 0x01) + 1],
  t1 & (1 << DMA_CONTROL_DACK) ? "dack " : "",
  t1 & (1 << DMA_REQUEST_ENABLE) ? "reqenb " : "",
  t1 & (1 << DMA_REQUEST) ? "req " : "",
  t1 & (1 << DMA_BUFFER_VALID) ? "valid " : "");
 size -= t;
 next += t;


 t1 = net2272_read(dev, USBCTL1);
 if (t1 & (1 << VBUS_PIN)) {
  if (t1 & (1 << USB_HIGH_SPEED))
   s = "high speed";
  else if (dev->gadget.speed == USB_SPEED_UNKNOWN)
   s = "powered";
  else
   s = "full speed";
 } else
  s = "not attached";
 t = scnprintf(next, size,
  "usbctl0 %02x usbctl1 %02x addr 0x%02x (%s)\n",
  net2272_read(dev, USBCTL0), t1,
  net2272_read(dev, OURADDR), s);
 size -= t;
 next += t;


 for (i = 0; i < 4; ++i) {
  struct net2272_ep *ep;

  ep = &dev->ep[i];
  if (i && !ep->desc)
   continue;

  t1 = net2272_ep_read(ep, EP_CFG);
  t2 = net2272_ep_read(ep, EP_RSPSET);
  t = scnprintf(next, size,
   "\n%s\tcfg %02x rsp (%02x) %s%s%s%s%s%s%s%s"
   "irqenb %02x\n",
   ep->ep.name, t1, t2,
   (t2 & (1 << ALT_NAK_OUT_PACKETS)) ? "NAK " : "",
   (t2 & (1 << HIDE_STATUS_PHASE)) ? "hide " : "",
   (t2 & (1 << AUTOVALIDATE)) ? "auto " : "",
   (t2 & (1 << INTERRUPT_MODE)) ? "interrupt " : "",
   (t2 & (1 << CONTROL_STATUS_PHASE_HANDSHAKE)) ? "status " : "",
   (t2 & (1 << NAK_OUT_PACKETS_MODE)) ? "NAKmode " : "",
   (t2 & (1 << ENDPOINT_TOGGLE)) ? "DATA1 " : "DATA0 ",
   (t2 & (1 << ENDPOINT_HALT)) ? "HALT " : "",
   net2272_ep_read(ep, EP_IRQENB));
  size -= t;
  next += t;

  t = scnprintf(next, size,
   "\tstat0 %02x stat1 %02x avail %04x "
   "(ep%d%s-%s)%s\n",
   net2272_ep_read(ep, EP_STAT0),
   net2272_ep_read(ep, EP_STAT1),
   (net2272_ep_read(ep, EP_AVAIL1) << 8) | net2272_ep_read(ep, EP_AVAIL0),
   t1 & 0x0f,
   ep->is_in ? "in" : "out",
   type_string(t1 >> 5),
   ep->stopped ? "*" : "");
  size -= t;
  next += t;

  t = scnprintf(next, size,
   "\tep_transfer %06x\n",
   ((net2272_ep_read(ep, EP_TRANSFER2) & 0xff) << 16) |
   ((net2272_ep_read(ep, EP_TRANSFER1) & 0xff) << 8) |
   ((net2272_ep_read(ep, EP_TRANSFER0) & 0xff)));
  size -= t;
  next += t;

  t1 = net2272_ep_read(ep, EP_BUFF_STATES) & 0x03;
  t2 = (net2272_ep_read(ep, EP_BUFF_STATES) >> 2) & 0x03;
  t = scnprintf(next, size,
   "\tbuf-a %s buf-b %s\n",
   buf_state_string(t1),
   buf_state_string(t2));
  size -= t;
  next += t;
 }

 spin_unlock_irqrestore(&dev->lock, flags);

 return PAGE_SIZE - size;
}
