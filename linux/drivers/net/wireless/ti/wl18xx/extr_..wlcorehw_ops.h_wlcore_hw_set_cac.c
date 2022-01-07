
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl12xx_vif {int dummy; } ;
struct wl1271 {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_cac ) (struct wl1271*,struct wl12xx_vif*,int) ;} ;


 int EINVAL ;
 int stub1 (struct wl1271*,struct wl12xx_vif*,int) ;

__attribute__((used)) static inline int
wlcore_hw_set_cac(struct wl1271 *wl, struct wl12xx_vif *wlvif, bool start)
{
 if (!wl->ops->set_cac)
  return -EINVAL;

 return wl->ops->set_cac(wl, wlvif, start);
}
