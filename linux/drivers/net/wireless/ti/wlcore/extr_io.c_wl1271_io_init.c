
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl1271 {int dev; TYPE_1__* if_ops; } ;
struct TYPE_2__ {int (* init ) (int ) ;} ;


 int stub1 (int ) ;

void wl1271_io_init(struct wl1271 *wl)
{
 if (wl->if_ops->init)
  wl->if_ops->init(wl->dev);
}
