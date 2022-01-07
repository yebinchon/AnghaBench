
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl1271 {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_spare_blocks ) (struct wl1271*,int) ;} ;


 int BUG_ON (int) ;
 int stub1 (struct wl1271*,int) ;

__attribute__((used)) static inline int
wlcore_hw_get_spare_blocks(struct wl1271 *wl, bool is_gem)
{
 if (!wl->ops->get_spare_blocks)
  BUG_ON(1);

 return wl->ops->get_spare_blocks(wl, is_gem);
}
