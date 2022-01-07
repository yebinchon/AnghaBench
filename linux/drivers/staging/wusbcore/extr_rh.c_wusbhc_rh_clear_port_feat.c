
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct wusbhc {scalar_t__ ports_max; int mutex; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int change; } ;


 int EINVAL ;
 int ENOSYS ;
 int EPIPE ;
 int USB_PORT_STAT_C_CONNECTION ;
 int USB_PORT_STAT_C_ENABLE ;
 int USB_PORT_STAT_C_RESET ;
 int __wusbhc_dev_disable (struct wusbhc*,scalar_t__) ;
 int dev_err (struct device*,char*,scalar_t__,int,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* wusb_port_by_idx (struct wusbhc*,scalar_t__) ;

__attribute__((used)) static int wusbhc_rh_clear_port_feat(struct wusbhc *wusbhc, u16 feature,
         u8 selector, u8 port_idx)
{
 int result = 0;
 struct device *dev = wusbhc->dev;

 if (port_idx > wusbhc->ports_max)
  return -EINVAL;

 mutex_lock(&wusbhc->mutex);
 switch (feature) {
 case 129:

 case 133:
  break;
 case 132:
  wusb_port_by_idx(wusbhc, port_idx)->change &= ~USB_PORT_STAT_C_RESET;
  break;
 case 135:
  wusb_port_by_idx(wusbhc, port_idx)->change &= ~USB_PORT_STAT_C_CONNECTION;
  break;
 case 130:
  __wusbhc_dev_disable(wusbhc, port_idx);
  break;
 case 134:
  wusb_port_by_idx(wusbhc, port_idx)->change &= ~USB_PORT_STAT_C_ENABLE;
  break;
 case 128:
 case 131:
  dev_err(dev, "(port_idx %d) Clear feat %d/%d UNIMPLEMENTED\n",
   port_idx, feature, selector);
  result = -ENOSYS;
  break;
 default:
  dev_err(dev, "(port_idx %d) Clear feat %d/%d UNKNOWN\n",
   port_idx, feature, selector);
  result = -EPIPE;
  break;
 }
 mutex_unlock(&wusbhc->mutex);

 return result;
}
