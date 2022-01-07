
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl1271 {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* handle_static_data ) (struct wl1271*,void*) ;} ;


 int stub1 (struct wl1271*,void*) ;

__attribute__((used)) static inline int
wlcore_handle_static_data(struct wl1271 *wl, void *static_data)
{
 if (wl->ops->handle_static_data)
  return wl->ops->handle_static_data(wl, static_data);

 return 0;
}
