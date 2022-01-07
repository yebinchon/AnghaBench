
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wl1271_tx_hw_descr {int dummy; } ;
struct wl1271 {TYPE_1__* ops; } ;
struct TYPE_2__ {void (* set_tx_desc_blocks ) (struct wl1271*,struct wl1271_tx_hw_descr*,int ,int ) ;} ;


 int BUG_ON (int) ;
 void stub1 (struct wl1271*,struct wl1271_tx_hw_descr*,int ,int ) ;

__attribute__((used)) static inline void
wlcore_hw_set_tx_desc_blocks(struct wl1271 *wl, struct wl1271_tx_hw_descr *desc,
        u32 blks, u32 spare_blks)
{
 if (!wl->ops->set_tx_desc_blocks)
  BUG_ON(1);

 return wl->ops->set_tx_desc_blocks(wl, desc, blks, spare_blks);
}
