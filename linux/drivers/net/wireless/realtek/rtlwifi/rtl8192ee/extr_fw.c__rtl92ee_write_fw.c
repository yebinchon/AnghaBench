
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum version_8192e { ____Placeholder_version_8192e } version_8192e ;


 int COMP_FW ;
 int DBG_LOUD ;
 int FW_8192C_PAGE_SIZE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 int pr_err (char*) ;
 int rtl_fill_dummy (int *,int*) ;
 int rtl_fw_page_write (struct ieee80211_hw*,int,int *,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int udelay (int) ;

__attribute__((used)) static void _rtl92ee_write_fw(struct ieee80211_hw *hw,
         enum version_8192e version,
         u8 *buffer, u32 size)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 *bufferptr = (u8 *)buffer;
 u32 pagenums, remainsize;
 u32 page, offset;

 RT_TRACE(rtlpriv, COMP_FW, DBG_LOUD , "FW size is %d bytes,\n", size);

 rtl_fill_dummy(bufferptr, &size);

 pagenums = size / FW_8192C_PAGE_SIZE;
 remainsize = size % FW_8192C_PAGE_SIZE;

 if (pagenums > 8)
  pr_err("Page numbers should not greater then 8\n");

 for (page = 0; page < pagenums; page++) {
  offset = page * FW_8192C_PAGE_SIZE;
  rtl_fw_page_write(hw, page, (bufferptr + offset),
      FW_8192C_PAGE_SIZE);
  udelay(2);
 }

 if (remainsize) {
  offset = pagenums * FW_8192C_PAGE_SIZE;
  page = pagenums;
  rtl_fw_page_write(hw, page, (bufferptr + offset), remainsize);
 }
}
