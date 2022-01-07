
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int total_mem_blocks; } ;
struct wl1271_tx_hw_descr {TYPE_1__ wl18xx_mem; } ;
struct wl1271 {int dummy; } ;



__attribute__((used)) static void
wl18xx_set_tx_desc_blocks(struct wl1271 *wl, struct wl1271_tx_hw_descr *desc,
     u32 blks, u32 spare_blks)
{
 desc->wl18xx_mem.total_mem_blocks = blks;
}
