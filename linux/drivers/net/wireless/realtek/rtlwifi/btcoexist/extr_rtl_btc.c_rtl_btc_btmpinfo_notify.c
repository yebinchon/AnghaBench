
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct TYPE_2__ {int bt_real_fw_ver; int bt_fw_ver; int bt_supported_feature; int bt_supported_version; int bt_ant_det_val; int bt_ble_scan_para; int bt_ble_scan_type; void* bt_forb_slot_val; void* bt_device_info; int afh_map_h; void* afh_map_m; void* afh_map_l; } ;
struct btc_coexist {int bt_mp_comp; TYPE_1__ bt_info; } ;
typedef int __le32 ;
typedef int __le16 ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 int complete (int *) ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 struct btc_coexist* rtl_btc_coexist (struct rtl_priv*) ;

void rtl_btc_btmpinfo_notify(struct rtl_priv *rtlpriv, u8 *tmp_buf, u8 length)
{
 struct btc_coexist *btcoexist = rtl_btc_coexist(rtlpriv);
 u8 extid, seq;
 u16 bt_real_fw_ver;
 u8 bt_fw_ver;
 u8 *data;

 if (!btcoexist)
  return;

 if ((length < 4) || (!tmp_buf))
  return;

 extid = tmp_buf[0];

 if (extid != 1)
  return;

 seq = tmp_buf[2] >> 4;
 data = &tmp_buf[3];


 switch (seq) {
 case 128:
  bt_real_fw_ver = tmp_buf[3] | (tmp_buf[4] << 8);
  bt_fw_ver = tmp_buf[5];

  btcoexist->bt_info.bt_real_fw_ver = bt_real_fw_ver;
  btcoexist->bt_info.bt_fw_ver = bt_fw_ver;
  break;
 case 136:
  btcoexist->bt_info.afh_map_l = le32_to_cpu(*(__le32 *)data);
  break;
 case 135:
  btcoexist->bt_info.afh_map_m = le32_to_cpu(*(__le32 *)data);
  break;
 case 137:
  btcoexist->bt_info.afh_map_h = le16_to_cpu(*(__le16 *)data);
  break;
 case 131:
  btcoexist->bt_info.bt_supported_feature = tmp_buf[3] |
         (tmp_buf[4] << 8);
  break;
 case 130:
  btcoexist->bt_info.bt_supported_version = tmp_buf[3] |
         (tmp_buf[4] << 8);
  break;
 case 134:
  btcoexist->bt_info.bt_ant_det_val = tmp_buf[3];
  break;
 case 133:
  btcoexist->bt_info.bt_ble_scan_para = tmp_buf[3] |
            (tmp_buf[4] << 8) |
            (tmp_buf[5] << 16) |
            (tmp_buf[6] << 24);
  break;
 case 132:
  btcoexist->bt_info.bt_ble_scan_type = tmp_buf[3];
  break;
 case 129:
  btcoexist->bt_info.bt_device_info =
      le32_to_cpu(*(__le32 *)data);
  break;
 case 138:
  btcoexist->bt_info.bt_forb_slot_val =
      le32_to_cpu(*(__le32 *)data);
  break;
 }

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "btmpinfo complete req_num=%d\n", seq);

 complete(&btcoexist->bt_mp_comp);
}
