
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wl1271 {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* convert_hwaddr ) (struct wl1271*,int ) ;} ;


 int BUG_ON (int) ;
 int stub1 (struct wl1271*,int ) ;

__attribute__((used)) static inline u32
wlcore_hw_convert_hwaddr(struct wl1271 *wl, u32 hwaddr)
{
 if (!wl->ops->convert_hwaddr)
  BUG_ON(1);

 return wl->ops->convert_hwaddr(wl, hwaddr);
}
