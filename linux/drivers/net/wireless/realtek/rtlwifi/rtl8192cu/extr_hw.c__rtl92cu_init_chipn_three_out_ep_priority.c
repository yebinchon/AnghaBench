
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ieee80211_hw {int dummy; } ;


 int QUEUE_HIGH ;
 int QUEUE_LOW ;
 int QUEUE_NORMAL ;
 int _rtl92c_init_chipn_reg_priority (struct ieee80211_hw*,int ,int ,int ,int ,int ,int ) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static void _rtl92cu_init_chipn_three_out_ep_priority(struct ieee80211_hw *hw,
            bool wmm_enable,
            u8 queue_sel)
{
 u16 beq, bkq, viq, voq, mgtq, hiq;

 if (!wmm_enable) {
  beq = QUEUE_LOW;
  bkq = QUEUE_LOW;
  viq = QUEUE_NORMAL;
  voq = QUEUE_HIGH;
  mgtq = QUEUE_HIGH;
  hiq = QUEUE_HIGH;
 } else {
  beq = QUEUE_LOW;
  bkq = QUEUE_NORMAL;
  viq = QUEUE_NORMAL;
  voq = QUEUE_HIGH;
  mgtq = QUEUE_HIGH;
  hiq = QUEUE_HIGH;
 }
 _rtl92c_init_chipn_reg_priority(hw, beq, bkq, viq, voq, mgtq, hiq);
 pr_info("Tx queue select :0x%02x..\n", queue_sel);
}
