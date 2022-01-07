
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int* DeviceRemovable; } ;
struct TYPE_5__ {TYPE_1__ hs; } ;
struct usb_hub_descriptor {int bDescLength; int bNbrPorts; int bPwrOn2PwrGood; TYPE_2__ u; int bHubContrCurrent; int wHubCharacteristics; int bDescriptorType; } ;
struct TYPE_6__ {int is_b_host; } ;
struct usb_hcd {TYPE_3__ self; } ;
struct musb {int port1_status; int lock; int mregs; } ;
typedef int __le32 ;






 int EPIPE ;
 int ESHUTDOWN ;



 int HCD_HW_ACCESSIBLE (struct usb_hcd*) ;
 int HUB_CHAR_INDV_PORT_LPSM ;
 int HUB_CHAR_NO_OCPM ;
 int MUSB_DEVCTL ;
 int MUSB_DEVCTL_SESSION ;
 int MUSB_PORT_STAT_RESUME ;
 int MUSB_TESTMODE ;
 int MUSB_TEST_FIFO_ACCESS ;
 int MUSB_TEST_FORCE_HOST ;
 int MUSB_TEST_FORCE_HS ;
 int MUSB_TEST_J ;
 int MUSB_TEST_K ;
 int MUSB_TEST_PACKET ;
 int MUSB_TEST_SE0_NAK ;


 int USB_DT_HUB ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 struct musb* hcd_to_musb (struct usb_hcd*) ;
 int is_host_active (struct musb*) ;
 int musb_dbg (struct musb*,char*,int) ;
 int musb_has_gadget (struct musb*) ;
 int musb_load_testpacket (struct musb*) ;
 int musb_platform_set_vbus (struct musb*,int ) ;
 int musb_port_reset (struct musb*,int) ;
 int musb_port_suspend (struct musb*,int) ;
 int musb_start (struct musb*) ;
 int musb_writeb (int ,int ,int) ;
 int pr_debug (char*) ;
 int put_unaligned (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

int musb_hub_control(
 struct usb_hcd *hcd,
 u16 typeReq,
 u16 wValue,
 u16 wIndex,
 char *buf,
 u16 wLength)
{
 struct musb *musb = hcd_to_musb(hcd);
 u32 temp;
 int retval = 0;
 unsigned long flags;
 bool start_musb = 0;

 spin_lock_irqsave(&musb->lock, flags);

 if (unlikely(!HCD_HW_ACCESSIBLE(hcd))) {
  spin_unlock_irqrestore(&musb->lock, flags);
  return -ESHUTDOWN;
 }





 switch (typeReq) {
 case 144:
 case 139:
  switch (wValue) {
  case 145:
  case 146:
   break;
  default:
   goto error;
  }
  break;
 case 143:
  if ((wIndex & 0xff) != 1)
   goto error;

  switch (wValue) {
  case 132:
   break;
  case 129:
   musb_port_suspend(musb, 0);
   break;
  case 131:
   if (!hcd->self.is_b_host)
    musb_platform_set_vbus(musb, 0);
   break;
  case 137:
  case 136:
  case 135:
  case 134:
  case 133:
   break;
  default:
   goto error;
  }
  musb_dbg(musb, "clear feature %d", wValue);
  musb->port1_status &= ~(1 << wValue);
  break;
 case 142:
  {
  struct usb_hub_descriptor *desc = (void *)buf;

  desc->bDescLength = 9;
  desc->bDescriptorType = USB_DT_HUB;
  desc->bNbrPorts = 1;
  desc->wHubCharacteristics = cpu_to_le16(
   HUB_CHAR_INDV_PORT_LPSM
   | HUB_CHAR_NO_OCPM
   );
  desc->bPwrOn2PwrGood = 5;
  desc->bHubContrCurrent = 0;


  desc->u.hs.DeviceRemovable[0] = 0x02;
  desc->u.hs.DeviceRemovable[1] = 0xff;
  }
  break;
 case 141:
  temp = 0;
  *(__le32 *) buf = cpu_to_le32(temp);
  break;
 case 140:
  if (wIndex != 1)
   goto error;

  put_unaligned(cpu_to_le32(musb->port1_status
     & ~MUSB_PORT_STAT_RESUME),
    (__le32 *) buf);


  musb_dbg(musb, "port status %08x", musb->port1_status);
  break;
 case 138:
  if ((wIndex & 0xff) != 1)
   goto error;

  switch (wValue) {
  case 131:
   if (!hcd->self.is_b_host && musb_has_gadget(musb))
    start_musb = 1;
   break;
  case 130:
   musb_port_reset(musb, 1);
   break;
  case 129:
   musb_port_suspend(musb, 1);
   break;
  case 128:
   if (unlikely(is_host_active(musb)))
    goto error;

   wIndex >>= 8;
   switch (wIndex) {
   case 1:
    pr_debug("TEST_J\n");
    temp = MUSB_TEST_J;
    break;
   case 2:
    pr_debug("TEST_K\n");
    temp = MUSB_TEST_K;
    break;
   case 3:
    pr_debug("TEST_SE0_NAK\n");
    temp = MUSB_TEST_SE0_NAK;
    break;
   case 4:
    pr_debug("TEST_PACKET\n");
    temp = MUSB_TEST_PACKET;
    musb_load_testpacket(musb);
    break;
   case 5:
    pr_debug("TEST_FORCE_ENABLE\n");
    temp = MUSB_TEST_FORCE_HOST
     | MUSB_TEST_FORCE_HS;

    musb_writeb(musb->mregs, MUSB_DEVCTL,
      MUSB_DEVCTL_SESSION);
    break;
   case 6:
    pr_debug("TEST_FIFO_ACCESS\n");
    temp = MUSB_TEST_FIFO_ACCESS;
    break;
   default:
    goto error;
   }
   musb_writeb(musb->mregs, MUSB_TESTMODE, temp);
   break;
  default:
   goto error;
  }
  musb_dbg(musb, "set feature %d", wValue);
  musb->port1_status |= 1 << wValue;
  break;

 default:
error:

  retval = -EPIPE;
 }
 spin_unlock_irqrestore(&musb->lock, flags);

 if (start_musb)
  musb_start(musb);

 return retval;
}
