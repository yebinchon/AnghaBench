
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251_acx_mem_map {int rx_control_addr; int num_rx_mem_blocks; int tx_control_addr; int num_tx_mem_blocks; } ;
struct wl1251 {struct wl1251_acx_mem_map* target_mem_map; struct wl1251_acx_mem_map* data_path; int channel; } ;


 int RX_CFG_PROMISCUOUS ;
 int RX_CFG_TSF ;
 int RX_FILTER_OPTION_DEF ;
 int kfree (struct wl1251_acx_mem_map*) ;
 int wl1251_acx_conn_monit_params (struct wl1251*) ;
 int wl1251_cmd_data_path_rx (struct wl1251*,int ,int) ;
 int wl1251_cmd_data_path_tx (struct wl1251*,int ,int) ;
 int wl1251_hw_init_beacon_broadcast (struct wl1251*) ;
 int wl1251_hw_init_beacon_filter (struct wl1251*) ;
 int wl1251_hw_init_data_path_config (struct wl1251*) ;
 int wl1251_hw_init_energy_detection (struct wl1251*) ;
 int wl1251_hw_init_hwenc_config (struct wl1251*) ;
 int wl1251_hw_init_mem_config (struct wl1251*) ;
 int wl1251_hw_init_phy_config (struct wl1251*) ;
 int wl1251_hw_init_power_auth (struct wl1251*) ;
 int wl1251_hw_init_pta (struct wl1251*) ;
 int wl1251_hw_init_rx_config (struct wl1251*,int,int ) ;
 int wl1251_hw_init_templates_config (struct wl1251*) ;
 int wl1251_hw_init_tx_queue_config (struct wl1251*) ;
 int wl1251_info (char*,int ,int ,int ,int ) ;

int wl1251_hw_init(struct wl1251 *wl)
{
 struct wl1251_acx_mem_map *wl_mem_map;
 int ret;

 ret = wl1251_hw_init_hwenc_config(wl);
 if (ret < 0)
  return ret;


 ret = wl1251_hw_init_templates_config(wl);
 if (ret < 0)
  return ret;


 ret = wl1251_hw_init_mem_config(wl);
 if (ret < 0)
  return ret;


 ret = wl1251_hw_init_data_path_config(wl);
 if (ret < 0)
  goto out_free_memmap;


 ret = wl1251_hw_init_rx_config(wl,
           RX_CFG_PROMISCUOUS | RX_CFG_TSF,
           RX_FILTER_OPTION_DEF);


 if (ret < 0)
  goto out_free_data_path;


 ret = wl1251_hw_init_tx_queue_config(wl);
 if (ret < 0)
  goto out_free_data_path;


 ret = wl1251_hw_init_phy_config(wl);
 if (ret < 0)
  goto out_free_data_path;


 ret = wl1251_acx_conn_monit_params(wl);
 if (ret < 0)
  goto out_free_data_path;


 ret = wl1251_hw_init_beacon_filter(wl);
 if (ret < 0)
  goto out_free_data_path;


 ret = wl1251_hw_init_pta(wl);
 if (ret < 0)
  goto out_free_data_path;


 ret = wl1251_hw_init_energy_detection(wl);
 if (ret < 0)
  goto out_free_data_path;


 ret = wl1251_hw_init_beacon_broadcast(wl);
 if (ret < 0)
  goto out_free_data_path;


 ret = wl1251_cmd_data_path_rx(wl, wl->channel, 1);
 if (ret < 0)
  goto out_free_data_path;


 ret = wl1251_cmd_data_path_tx(wl, wl->channel, 1);
 if (ret < 0)
  goto out_free_data_path;


 ret = wl1251_hw_init_power_auth(wl);
 if (ret < 0)
  goto out_free_data_path;

 wl_mem_map = wl->target_mem_map;
 wl1251_info("%d tx blocks at 0x%x, %d rx blocks at 0x%x",
      wl_mem_map->num_tx_mem_blocks,
      wl->data_path->tx_control_addr,
      wl_mem_map->num_rx_mem_blocks,
      wl->data_path->rx_control_addr);

 return 0;

 out_free_data_path:
 kfree(wl->data_path);

 out_free_memmap:
 kfree(wl->target_mem_map);

 return ret;
}
