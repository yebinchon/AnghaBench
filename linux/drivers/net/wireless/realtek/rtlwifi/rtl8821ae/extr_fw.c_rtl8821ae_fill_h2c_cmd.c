
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_hal {int fw_ready; } ;
struct ieee80211_hw {int dummy; } ;


 int WARN_ONCE (int,char*) ;
 int _rtl8821ae_fill_h2c_command (struct ieee80211_hw*,int ,int ,int *) ;
 int memcpy (int *,int *,int ) ;
 int memset (int *,int ,int) ;
 struct rtl_hal* rtl_hal (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;

void rtl8821ae_fill_h2c_cmd(struct ieee80211_hw *hw,
       u8 element_id, u32 cmd_len, u8 *cmdbuffer)
{
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 u32 tmp_cmdbuf[2];

 if (!rtlhal->fw_ready) {
  WARN_ONCE(1,
     "rtl8821ae: error H2C cmd because of Fw download fail!!!\n");
  return;
 }

 memset(tmp_cmdbuf, 0, 8);
 memcpy(tmp_cmdbuf, cmdbuffer, cmd_len);
 _rtl8821ae_fill_h2c_command(hw, element_id, cmd_len, (u8 *)&tmp_cmdbuf);
}
