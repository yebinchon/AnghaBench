
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {scalar_t__ cb; } ;
struct rtl_tcb_desc {int last_inipkt; int cmd_or_init; int queue_index; } ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct rtl_hal {int h2c_txcmd_seq; } ;
struct ieee80211_hw {int dummy; } ;
struct h2c_wpa_two_way_parm {int dummy; } ;
struct h2c_set_pwrmode_parm {int dummy; } ;
struct h2c_joinbss_rpt_parm {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* tx_polling ) (struct ieee80211_hw*,int ) ;} ;


 int DESC_PACKET_TYPE_NORMAL ;





 int H2C_JOINBSSRPT_CMD ;
 int H2C_SETPWRMODE_CMD ;
 int H2C_WOWLAN_FW_OFFLOAD ;
 int H2C_WOWLAN_UPDATE_GTK_CMD ;
 int H2C_WOWLAN_UPDATE_IV_CMD ;
 int MAX_TRANSMIT_BUFFER_SIZE ;
 int TXCMD_QUEUE ;
 int _rtl92s_cmd_send_packet (struct ieee80211_hw*,struct sk_buff*,int) ;
 int _rtl92s_fill_h2c_cmd (struct sk_buff*,int ,int,int*,int*,int**,int *) ;
 int _rtl92s_get_h2c_cmdlen (int ,int,int*) ;
 struct sk_buff* dev_alloc_skb (int) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,int ) ;

__attribute__((used)) static bool _rtl92s_firmware_set_h2c_cmd(struct ieee80211_hw *hw, u8 h2c_cmd,
      u8 *pcmd_buffer)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_tcb_desc *cb_desc;
 struct sk_buff *skb;
 u32 element_id = 0;
 u32 cmd_len = 0;
 u32 len;

 switch (h2c_cmd) {
 case 131:
  element_id = H2C_SETPWRMODE_CMD ;
  cmd_len = sizeof(struct h2c_set_pwrmode_parm);
  break;
 case 132:
  element_id = H2C_JOINBSSRPT_CMD;
  cmd_len = sizeof(struct h2c_joinbss_rpt_parm);
  break;
 case 129:
  element_id = H2C_WOWLAN_UPDATE_GTK_CMD;
  cmd_len = sizeof(struct h2c_wpa_two_way_parm);
  break;
 case 128:
  element_id = H2C_WOWLAN_UPDATE_IV_CMD;
  cmd_len = sizeof(unsigned long long);
  break;
 case 130:
  element_id = H2C_WOWLAN_FW_OFFLOAD;
  cmd_len = sizeof(u8);
  break;
 default:
  break;
 }

 len = _rtl92s_get_h2c_cmdlen(MAX_TRANSMIT_BUFFER_SIZE, 1, &cmd_len);
 skb = dev_alloc_skb(len);
 if (!skb)
  return 0;
 cb_desc = (struct rtl_tcb_desc *)(skb->cb);
 cb_desc->queue_index = TXCMD_QUEUE;
 cb_desc->cmd_or_init = DESC_PACKET_TYPE_NORMAL;
 cb_desc->last_inipkt = 0;

 _rtl92s_fill_h2c_cmd(skb, MAX_TRANSMIT_BUFFER_SIZE, 1, &element_id,
   &cmd_len, &pcmd_buffer, &rtlhal->h2c_txcmd_seq);
 _rtl92s_cmd_send_packet(hw, skb, 0);
 rtlpriv->cfg->ops->tx_polling(hw, TXCMD_QUEUE);

 return 1;
}
