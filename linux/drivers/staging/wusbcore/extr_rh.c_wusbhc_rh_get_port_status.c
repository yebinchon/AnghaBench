
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct wusbhc {scalar_t__ ports_max; int mutex; } ;
typedef int __le16 ;
struct TYPE_2__ {int change; int status; } ;


 int EINVAL ;
 int cpu_to_le16 (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* wusb_port_by_idx (struct wusbhc*,scalar_t__) ;

__attribute__((used)) static int wusbhc_rh_get_port_status(struct wusbhc *wusbhc, u16 port_idx,
         u32 *_buf, u16 wLength)
{
 __le16 *buf = (__le16 *)_buf;

 if (port_idx > wusbhc->ports_max)
  return -EINVAL;

 mutex_lock(&wusbhc->mutex);
 buf[0] = cpu_to_le16(wusb_port_by_idx(wusbhc, port_idx)->status);
 buf[1] = cpu_to_le16(wusb_port_by_idx(wusbhc, port_idx)->change);
 mutex_unlock(&wusbhc->mutex);

 return 0;
}
