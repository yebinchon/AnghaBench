
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251_acx_mem_map {int num_tx_mem_blocks; } ;
struct wl1251 {struct wl1251_acx_mem_map* target_mem_map; } ;
struct acx_tx_queue_qos_config {int dummy; } ;


 int ACX_TX_QUEUE_CFG ;
 int AC_BE ;
 int AC_BK ;
 int AC_VI ;
 int AC_VO ;
 int AIFS_DIFS ;
 int CWMAX_BE ;
 int CWMAX_BK ;
 int CWMAX_VI ;
 int CWMAX_VO ;
 int CWMIN_BE ;
 int CWMIN_BK ;
 int CWMIN_VI ;
 int CWMIN_VO ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_NUM_OF_AC ;
 int TXOP_BE ;
 int TXOP_BK ;
 int TXOP_VI ;
 int TXOP_VO ;
 int kfree (struct acx_tx_queue_qos_config*) ;
 struct acx_tx_queue_qos_config* kzalloc (int,int ) ;
 int wl1251_acx_ac_cfg (struct wl1251*,int ,int ,int ,int ,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct acx_tx_queue_qos_config*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_hw_init_txq_fill (int,struct acx_tx_queue_qos_config*,int ) ;

__attribute__((used)) static int wl1251_hw_init_tx_queue_config(struct wl1251 *wl)
{
 struct acx_tx_queue_qos_config *config;
 struct wl1251_acx_mem_map *wl_mem_map = wl->target_mem_map;
 int ret, i;

 wl1251_debug(DEBUG_ACX, "acx tx queue config");

 config = kzalloc(sizeof(*config), GFP_KERNEL);
 if (!config) {
  ret = -ENOMEM;
  goto out;
 }

 for (i = 0; i < MAX_NUM_OF_AC; i++) {
  ret = wl1251_hw_init_txq_fill(i, config,
           wl_mem_map->num_tx_mem_blocks);
  if (ret < 0)
   goto out;

  ret = wl1251_cmd_configure(wl, ACX_TX_QUEUE_CFG,
        config, sizeof(*config));
  if (ret < 0)
   goto out;
 }

 wl1251_acx_ac_cfg(wl, AC_BE, CWMIN_BE, CWMAX_BE, AIFS_DIFS, TXOP_BE);
 wl1251_acx_ac_cfg(wl, AC_BK, CWMIN_BK, CWMAX_BK, AIFS_DIFS, TXOP_BK);
 wl1251_acx_ac_cfg(wl, AC_VI, CWMIN_VI, CWMAX_VI, AIFS_DIFS, TXOP_VI);
 wl1251_acx_ac_cfg(wl, AC_VO, CWMIN_VO, CWMAX_VO, AIFS_DIFS, TXOP_VO);

out:
 kfree(config);
 return ret;
}
