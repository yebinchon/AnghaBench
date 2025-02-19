
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl_priv {TYPE_1__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int * maps; } ;


 int BIT (int) ;
 int CAM_CONTENT_COUNT ;
 int COMP_SEC ;
 int DBG_DMESG ;
 int DBG_LOUD ;
 int RT_PRINT_DATA (struct rtl_priv*,int ,int ,char*,scalar_t__*,int) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,...) ;
 size_t RWCAM ;
 size_t WCAMI ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_dword (struct rtl_priv*,int ,int) ;

__attribute__((used)) static void rtl_cam_program_entry(struct ieee80211_hw *hw, u32 entry_no,
      u8 *mac_addr, u8 *key_cont_128, u16 us_config)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 u32 target_command;
 u32 target_content = 0;
 int entry_i;

 RT_PRINT_DATA(rtlpriv, COMP_SEC, DBG_DMESG, "Key content :",
        key_cont_128, 16);


 for (entry_i = CAM_CONTENT_COUNT - 1; entry_i >= 0; entry_i--) {
  target_command = entry_i + CAM_CONTENT_COUNT * entry_no;
  target_command = target_command | BIT(31) | BIT(16);

  if (entry_i == 0) {
   target_content = (u32) (*(mac_addr + 0)) << 16 |
       (u32) (*(mac_addr + 1)) << 24 | (u32) us_config;

   rtl_write_dword(rtlpriv, rtlpriv->cfg->maps[WCAMI],
     target_content);
   rtl_write_dword(rtlpriv, rtlpriv->cfg->maps[RWCAM],
     target_command);

   RT_TRACE(rtlpriv, COMP_SEC, DBG_LOUD,
     "WRITE %x: %x\n",
     rtlpriv->cfg->maps[WCAMI], target_content);
   RT_TRACE(rtlpriv, COMP_SEC, DBG_LOUD,
     "The Key ID is %d\n", entry_no);
   RT_TRACE(rtlpriv, COMP_SEC, DBG_LOUD,
     "WRITE %x: %x\n",
     rtlpriv->cfg->maps[RWCAM], target_command);

  } else if (entry_i == 1) {

   target_content = (u32) (*(mac_addr + 5)) << 24 |
       (u32) (*(mac_addr + 4)) << 16 |
       (u32) (*(mac_addr + 3)) << 8 |
       (u32) (*(mac_addr + 2));

   rtl_write_dword(rtlpriv, rtlpriv->cfg->maps[WCAMI],
     target_content);
   rtl_write_dword(rtlpriv, rtlpriv->cfg->maps[RWCAM],
     target_command);

   RT_TRACE(rtlpriv, COMP_SEC, DBG_LOUD,
     "WRITE A4: %x\n", target_content);
   RT_TRACE(rtlpriv, COMP_SEC, DBG_LOUD,
     "WRITE A0: %x\n", target_command);

  } else {

   target_content =
       (u32) (*(key_cont_128 + (entry_i * 4 - 8) + 3)) <<
       24 | (u32) (*(key_cont_128 + (entry_i * 4 - 8) + 2))
       << 16 |
       (u32) (*(key_cont_128 + (entry_i * 4 - 8) + 1)) << 8
       | (u32) (*(key_cont_128 + (entry_i * 4 - 8) + 0));

   rtl_write_dword(rtlpriv, rtlpriv->cfg->maps[WCAMI],
     target_content);
   rtl_write_dword(rtlpriv, rtlpriv->cfg->maps[RWCAM],
     target_command);

   RT_TRACE(rtlpriv, COMP_SEC, DBG_LOUD,
     "WRITE A4: %x\n", target_content);
   RT_TRACE(rtlpriv, COMP_SEC, DBG_LOUD,
     "WRITE A0: %x\n", target_command);
  }
 }

 RT_TRACE(rtlpriv, COMP_SEC, DBG_LOUD,
   "after set key, usconfig:%x\n", us_config);
}
