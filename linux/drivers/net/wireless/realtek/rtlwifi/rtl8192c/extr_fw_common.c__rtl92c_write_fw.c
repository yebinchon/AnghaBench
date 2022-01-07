
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum version_8192c { ____Placeholder_version_8192c } version_8192c ;


 int COMP_FW ;
 int DBG_TRACE ;
 int FW_8192C_PAGE_SIZE ;
 scalar_t__ HARDWARE_TYPE_RTL8192CE ;
 int IS_NORMAL_CHIP (int) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 int pr_err (char*) ;
 int rtl_fill_dummy (int *,int*) ;
 int rtl_fw_block_write (struct ieee80211_hw*,int *,int) ;
 int rtl_fw_page_write (struct ieee80211_hw*,int,int *,int) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl92c_write_fw(struct ieee80211_hw *hw,
        enum version_8192c version, u8 *buffer, u32 size)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 bool is_version_b;
 u8 *bufferptr = (u8 *)buffer;

 RT_TRACE(rtlpriv, COMP_FW, DBG_TRACE, "FW size is %d bytes,\n", size);
 is_version_b = IS_NORMAL_CHIP(version);
 if (is_version_b) {
  u32 pagenums, remainsize;
  u32 page, offset;

  if (rtlhal->hw_type == HARDWARE_TYPE_RTL8192CE)
   rtl_fill_dummy(bufferptr, &size);

  pagenums = size / FW_8192C_PAGE_SIZE;
  remainsize = size % FW_8192C_PAGE_SIZE;

  if (pagenums > 4)
   pr_err("Page numbers should not greater then 4\n");

  for (page = 0; page < pagenums; page++) {
   offset = page * FW_8192C_PAGE_SIZE;
   rtl_fw_page_write(hw, page, (bufferptr + offset),
       FW_8192C_PAGE_SIZE);
  }

  if (remainsize) {
   offset = pagenums * FW_8192C_PAGE_SIZE;
   page = pagenums;
   rtl_fw_page_write(hw, page, (bufferptr + offset),
       remainsize);
  }
 } else {
  rtl_fw_block_write(hw, buffer, size);
 }
}
