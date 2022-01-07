
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl1271 {int dev; TYPE_1__* if_ops; } ;
struct TYPE_2__ {int (* set_block_size ) (int ,int ) ;} ;


 int WL12XX_BUS_BLOCK_SIZE ;
 int stub1 (int ,int ) ;

bool wl1271_set_block_size(struct wl1271 *wl)
{
 if (wl->if_ops->set_block_size) {
  wl->if_ops->set_block_size(wl->dev, WL12XX_BUS_BLOCK_SIZE);
  return 1;
 }

 return 0;
}
