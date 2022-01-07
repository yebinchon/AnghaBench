
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ieee80211_hw {int dummy; } ;


 int _rtl92d_fill_h2c_command (struct ieee80211_hw*,int ,int ,int *) ;
 int memcpy (int *,int *,int ) ;
 int memset (int *,int ,int) ;

void rtl92d_fill_h2c_cmd(struct ieee80211_hw *hw,
    u8 element_id, u32 cmd_len, u8 *cmdbuffer)
{
 u32 tmp_cmdbuf[2];

 memset(tmp_cmdbuf, 0, 8);
 memcpy(tmp_cmdbuf, cmdbuffer, cmd_len);
 _rtl92d_fill_h2c_command(hw, element_id, cmd_len, (u8 *)&tmp_cmdbuf);
 return;
}
