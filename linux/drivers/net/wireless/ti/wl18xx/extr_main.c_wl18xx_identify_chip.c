
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct wl1271 {int quirks; int fw_mem_block_size; int fwlog_end; int ba_rx_session_count_max; int max_channels_5; int sched_scan_templ_id_5; int sched_scan_templ_id_2_4; int scan_templ_id_5; int scan_templ_id_2_4; TYPE_1__ chip; void* plt_fw_name; void* sr_fw_name; } ;




 int CMD_TEMPL_CFG_PROBE_REQ_2_4 ;
 int CMD_TEMPL_CFG_PROBE_REQ_5 ;
 int CMD_TEMPL_PROBE_REQ_2_4_PERIODIC ;
 int CMD_TEMPL_PROBE_REQ_5_PERIODIC ;
 int DEBUG_BOOT ;
 int ENODEV ;
 int WL18XX_CHIP_VER ;
 void* WL18XX_FW_NAME ;
 int WL18XX_IFTYPE_VER ;
 int WL18XX_MAJOR_VER ;
 int WL18XX_MAX_CHANNELS_5GHZ ;
 int WL18XX_MINOR_VER ;
 int WL18XX_RX_BA_MAX_SESSIONS ;
 int WL18XX_SUBTYPE_VER ;
 int WLCORE_QUIRK_DUAL_PROBE_TMPL ;
 int WLCORE_QUIRK_NO_SCHED_SCAN_WHILE_CONN ;
 int WLCORE_QUIRK_REGDOMAIN_CONF ;
 int WLCORE_QUIRK_RX_BLOCKSIZE_ALIGN ;
 int WLCORE_QUIRK_TX_BLOCKSIZE_ALIGN ;
 int WLCORE_QUIRK_TX_PAD_LAST_FRAME ;
 int wl1271_debug (int ,char*,int) ;
 int wl1271_warning (char*,int) ;
 int wlcore_set_min_fw_ver (struct wl1271*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int wl18xx_identify_chip(struct wl1271 *wl)
{
 int ret = 0;

 switch (wl->chip.id) {
 case 128:
  wl1271_debug(DEBUG_BOOT, "chip id 0x%x (185x PG20)",
     wl->chip.id);
  wl->sr_fw_name = WL18XX_FW_NAME;

  wl->plt_fw_name = WL18XX_FW_NAME;
  wl->quirks |= WLCORE_QUIRK_RX_BLOCKSIZE_ALIGN |
         WLCORE_QUIRK_TX_BLOCKSIZE_ALIGN |
         WLCORE_QUIRK_NO_SCHED_SCAN_WHILE_CONN |
         WLCORE_QUIRK_TX_PAD_LAST_FRAME |
         WLCORE_QUIRK_REGDOMAIN_CONF |
         WLCORE_QUIRK_DUAL_PROBE_TMPL;

  wlcore_set_min_fw_ver(wl, WL18XX_CHIP_VER,
          WL18XX_IFTYPE_VER, WL18XX_MAJOR_VER,
          WL18XX_SUBTYPE_VER, WL18XX_MINOR_VER,

          0, 0, 0, 0);
  break;
 case 129:
  wl1271_warning("chip id 0x%x (185x PG10) is deprecated",
          wl->chip.id);
  ret = -ENODEV;
  goto out;

 default:
  wl1271_warning("unsupported chip id: 0x%x", wl->chip.id);
  ret = -ENODEV;
  goto out;
 }

 wl->fw_mem_block_size = 272;
 wl->fwlog_end = 0x40000000;

 wl->scan_templ_id_2_4 = CMD_TEMPL_CFG_PROBE_REQ_2_4;
 wl->scan_templ_id_5 = CMD_TEMPL_CFG_PROBE_REQ_5;
 wl->sched_scan_templ_id_2_4 = CMD_TEMPL_PROBE_REQ_2_4_PERIODIC;
 wl->sched_scan_templ_id_5 = CMD_TEMPL_PROBE_REQ_5_PERIODIC;
 wl->max_channels_5 = WL18XX_MAX_CHANNELS_5GHZ;
 wl->ba_rx_session_count_max = WL18XX_RX_BA_MAX_SESSIONS;
out:
 return ret;
}
