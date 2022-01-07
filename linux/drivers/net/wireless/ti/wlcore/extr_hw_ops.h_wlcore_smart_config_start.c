
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wl1271 {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* smart_config_start ) (struct wl1271*,int ) ;} ;


 int EINVAL ;
 int stub1 (struct wl1271*,int ) ;

__attribute__((used)) static inline int
wlcore_smart_config_start(struct wl1271 *wl, u32 group_bitmap)
{
 if (!wl->ops->smart_config_start)
  return -EINVAL;

 return wl->ops->smart_config_start(wl, group_bitmap);
}
