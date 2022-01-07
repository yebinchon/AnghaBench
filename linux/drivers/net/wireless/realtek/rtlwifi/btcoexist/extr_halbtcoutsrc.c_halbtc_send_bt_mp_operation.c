
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_6__ {int hw; } ;
struct rtl_priv {TYPE_3__ mac80211; TYPE_2__* cfg; } ;
struct btc_coexist {int bt_mp_comp; struct rtl_priv* adapter; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* fill_h2c_cmd ) (int ,int,int ,int*) ;} ;
 int BT_SEQ_DONT_CARE ;
 int BT_SEQ_GET_AFH_MAP_H ;
 int BT_SEQ_GET_AFH_MAP_L ;
 int BT_SEQ_GET_AFH_MAP_M ;
 int BT_SEQ_GET_BT_ANT_DET_VAL ;
 int BT_SEQ_GET_BT_BLE_SCAN_PARA ;
 int BT_SEQ_GET_BT_BLE_SCAN_TYPE ;
 int BT_SEQ_GET_BT_COEX_SUPPORTED_FEATURE ;
 int BT_SEQ_GET_BT_COEX_SUPPORTED_VERSION ;
 int BT_SEQ_GET_BT_DEVICE_INFO ;
 int BT_SEQ_GET_BT_FORB_SLOT_VAL ;
 int BT_SEQ_GET_BT_VERSION ;
 int COMP_BT_COEXIST ;
 int DBG_DMESG ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,...) ;
 int halbtc_is_hw_mailbox_exist (struct btc_coexist*) ;
 scalar_t__ in_interrupt () ;
 int msecs_to_jiffies (unsigned long) ;
 int reinit_completion (int *) ;
 int stub1 (int ,int,int ,int*) ;
 scalar_t__ wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static
bool halbtc_send_bt_mp_operation(struct btc_coexist *btcoexist, u8 op_code,
     u8 *cmd, u32 len, unsigned long wait_ms)
{
 struct rtl_priv *rtlpriv;
 const u8 oper_ver = 0;
 u8 req_num;

 if (!halbtc_is_hw_mailbox_exist(btcoexist))
  return 0;

 if (wait_ms)
  reinit_completion(&btcoexist->bt_mp_comp);

 rtlpriv = btcoexist->adapter;




 switch (op_code) {
 case 131:
  req_num = BT_SEQ_GET_BT_VERSION;
  break;
 case 140:
  req_num = BT_SEQ_GET_AFH_MAP_L;
  break;
 case 139:
  req_num = BT_SEQ_GET_AFH_MAP_M;
  break;
 case 141:
  req_num = BT_SEQ_GET_AFH_MAP_H;
  break;
 case 135:
  req_num = BT_SEQ_GET_BT_COEX_SUPPORTED_FEATURE;
  break;
 case 134:
  req_num = BT_SEQ_GET_BT_COEX_SUPPORTED_VERSION;
  break;
 case 138:
  req_num = BT_SEQ_GET_BT_ANT_DET_VAL;
  break;
 case 137:
  req_num = BT_SEQ_GET_BT_BLE_SCAN_PARA;
  break;
 case 136:
  req_num = BT_SEQ_GET_BT_BLE_SCAN_TYPE;
  break;
 case 133:
  req_num = BT_SEQ_GET_BT_DEVICE_INFO;
  break;
 case 132:
  req_num = BT_SEQ_GET_BT_FORB_SLOT_VAL;
  break;
 case 129:
 case 128:
 case 130:
 default:
  req_num = BT_SEQ_DONT_CARE;
  break;
 }

 cmd[0] |= (oper_ver & 0x0f);
 cmd[0] |= ((req_num << 4) & 0xf0);
 cmd[1] = op_code;
 rtlpriv->cfg->ops->fill_h2c_cmd(rtlpriv->mac80211.hw, 0x67, len, cmd);


 if (!wait_ms)
  return 1;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "btmpinfo wait req_num=%d wait=%ld\n", req_num, wait_ms);

 if (in_interrupt())
  return 0;

 if (wait_for_completion_timeout(&btcoexist->bt_mp_comp,
     msecs_to_jiffies(wait_ms)) == 0) {
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
    "btmpinfo wait (req_num=%d) timeout\n", req_num);

  return 0;
 }

 return 1;
}
