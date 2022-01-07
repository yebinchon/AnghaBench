
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hdr; } ;
struct wusbhc {unsigned int ports_max; int mutex; TYPE_1__ cack_ie; int (* set_ptk ) (struct wusbhc*,unsigned int,int ,int *,int ) ;struct device* dev; } ;
struct wusb_port {int status; int change; struct wusb_dev* wusb_dev; } ;
struct wusb_dn_connect {int CDID; } ;
struct wusb_dev {int cdid; } ;
struct device {int dummy; } ;


 int USB_PORT_STAT_CONNECTION ;
 int USB_PORT_STAT_C_CONNECTION ;
 int USB_PORT_STAT_POWER ;
 int dev_err (struct device*,char*,unsigned int,char const*) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct wusbhc*,unsigned int,int ,int *,int ) ;
 struct wusb_port* wusb_port_by_idx (struct wusbhc*,unsigned int) ;
 struct wusb_dev* wusbhc_cack_add (struct wusbhc*,struct wusb_dn_connect*,char const*,unsigned int) ;
 int wusbhc_mmcie_set (struct wusbhc*,int ,int ,int *) ;

__attribute__((used)) static
void wusbhc_devconnect_ack(struct wusbhc *wusbhc, struct wusb_dn_connect *dnc,
      const char *pr_cdid)
{
 int result;
 struct device *dev = wusbhc->dev;
 struct wusb_dev *wusb_dev;
 struct wusb_port *port;
 unsigned idx;

 mutex_lock(&wusbhc->mutex);


 for (idx = 0; idx < wusbhc->ports_max; idx++) {
  port = wusb_port_by_idx(wusbhc, idx);
  if (port->wusb_dev
      && memcmp(&dnc->CDID, &port->wusb_dev->cdid, sizeof(dnc->CDID)) == 0)
   goto error_unlock;
 }

 for (idx = 0; idx < wusbhc->ports_max; idx++) {
  port = wusb_port_by_idx(wusbhc, idx);
  if ((port->status & USB_PORT_STAT_POWER)
      && !(port->status & USB_PORT_STAT_CONNECTION))
   break;
 }
 if (idx >= wusbhc->ports_max) {
  dev_err(dev, "Host controller can't connect more devices "
   "(%u already connected); device %s rejected\n",
   wusbhc->ports_max, pr_cdid);



  goto error_unlock;
 }


 wusbhc->set_ptk(wusbhc, idx, 0, ((void*)0), 0);



 wusb_dev = wusbhc_cack_add(wusbhc, dnc, pr_cdid, idx);
 if (wusb_dev == ((void*)0))
  goto error_unlock;
 result = wusbhc_mmcie_set(wusbhc, 0, 0, &wusbhc->cack_ie.hdr);
 if (result < 0)
  goto error_unlock;


 msleep(3);
 port->wusb_dev = wusb_dev;
 port->status |= USB_PORT_STAT_CONNECTION;
 port->change |= USB_PORT_STAT_C_CONNECTION;





error_unlock:
 mutex_unlock(&wusbhc->mutex);
 return;

}
