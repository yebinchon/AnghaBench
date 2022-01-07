
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wl1271_acx_mem_map {int dummy; } ;
struct wl1271 {int tx_blocks_available; TYPE_1__* target_mem_map; } ;
struct TYPE_3__ {int num_tx_mem_blocks; } ;


 int DEBUG_TX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int wl1271_acx_mem_map (struct wl1271*,void*,int) ;
 int wl1271_debug (int ,char*,int ) ;
 int wl1271_error (char*) ;

int wl1271_acx_init_mem_config(struct wl1271 *wl)
{
 int ret;

 wl->target_mem_map = kzalloc(sizeof(struct wl1271_acx_mem_map),
         GFP_KERNEL);
 if (!wl->target_mem_map) {
  wl1271_error("couldn't allocate target memory map");
  return -ENOMEM;
 }


 ret = wl1271_acx_mem_map(wl, (void *)wl->target_mem_map,
     sizeof(struct wl1271_acx_mem_map));
 if (ret < 0) {
  wl1271_error("couldn't retrieve firmware memory map");
  kfree(wl->target_mem_map);
  wl->target_mem_map = ((void*)0);
  return ret;
 }


 wl->tx_blocks_available =
  le32_to_cpu(wl->target_mem_map->num_tx_mem_blocks);
 wl1271_debug(DEBUG_TX, "available tx blocks: %d",
       wl->tx_blocks_available);

 return 0;
}
