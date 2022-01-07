
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl1271 {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* ap_sleep ) (struct wl1271*) ;} ;


 int stub1 (struct wl1271*) ;

__attribute__((used)) static inline int
wlcore_hw_ap_sleep(struct wl1271 *wl)
{
 if (wl->ops->ap_sleep)
  return wl->ops->ap_sleep(wl);

 return 0;
}
