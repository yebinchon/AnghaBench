
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wl1271 {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* calc_tx_blocks ) (struct wl1271*,int ,int ) ;} ;


 int BUG_ON (int) ;
 int stub1 (struct wl1271*,int ,int ) ;

__attribute__((used)) static inline u32
wlcore_hw_calc_tx_blocks(struct wl1271 *wl, u32 len, u32 spare_blks)
{
 if (!wl->ops->calc_tx_blocks)
  BUG_ON(1);

 return wl->ops->calc_tx_blocks(wl, len, spare_blks);
}
