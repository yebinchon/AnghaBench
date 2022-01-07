
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_acx_config_memory {int fwlog_blocks; int tx_min; int rx_free_req; int tx_free_req; int dyn_mem_enable; int total_tx_descriptors; int num_ssid_profiles; int tx_min_mem_block_num; int rx_mem_block_num; int num_stations; } ;
struct TYPE_3__ {int mem_blocks; } ;
struct conf_memory_settings {int tx_min; int min_req_rx_blocks; int min_req_tx_blocks; int dynamic_memory; int ssid_profiles; int tx_min_block_num; int rx_block_num; int num_stations; } ;
struct TYPE_4__ {TYPE_1__ fwlog; struct conf_memory_settings mem; } ;
struct wl1271 {TYPE_2__ conf; int num_tx_desc; } ;


 int ACX_MEM_CFG ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_le32 (int ) ;
 int kfree (struct wl12xx_acx_config_memory*) ;
 struct wl12xx_acx_config_memory* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wl12xx_acx_config_memory*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl12xx_acx_mem_cfg(struct wl1271 *wl)
{
 struct wl12xx_acx_config_memory *mem_conf;
 struct conf_memory_settings *mem;
 int ret;

 wl1271_debug(DEBUG_ACX, "wl1271 mem cfg");

 mem_conf = kzalloc(sizeof(*mem_conf), GFP_KERNEL);
 if (!mem_conf) {
  ret = -ENOMEM;
  goto out;
 }

 mem = &wl->conf.mem;


 mem_conf->num_stations = mem->num_stations;
 mem_conf->rx_mem_block_num = mem->rx_block_num;
 mem_conf->tx_min_mem_block_num = mem->tx_min_block_num;
 mem_conf->num_ssid_profiles = mem->ssid_profiles;
 mem_conf->total_tx_descriptors = cpu_to_le32(wl->num_tx_desc);
 mem_conf->dyn_mem_enable = mem->dynamic_memory;
 mem_conf->tx_free_req = mem->min_req_tx_blocks;
 mem_conf->rx_free_req = mem->min_req_rx_blocks;
 mem_conf->tx_min = mem->tx_min;
 mem_conf->fwlog_blocks = wl->conf.fwlog.mem_blocks;

 ret = wl1271_cmd_configure(wl, ACX_MEM_CFG, mem_conf,
       sizeof(*mem_conf));
 if (ret < 0) {
  wl1271_warning("wl1271 mem config failed: %d", ret);
  goto out;
 }

out:
 kfree(mem_conf);
 return ret;
}
