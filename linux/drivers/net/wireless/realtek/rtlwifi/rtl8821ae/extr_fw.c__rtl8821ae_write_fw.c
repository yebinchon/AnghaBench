
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum version_8821ae { ____Placeholder_version_8821ae } version_8821ae ;


 int COMP_FW ;
 int DBG_LOUD ;
 int FW_8821AE_PAGE_SIZE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 int pr_err (char*) ;
 int rtl_fill_dummy (int *,int*) ;
 int rtl_fw_page_write (struct ieee80211_hw*,int,int *,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl8821ae_write_fw(struct ieee80211_hw *hw,
    enum version_8821ae version,
    u8 *buffer, u32 size)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 *bufferptr = (u8 *)buffer;
 u32 pagenums, remainsize;
 u32 page, offset;

 RT_TRACE(rtlpriv, COMP_FW, DBG_LOUD, "FW size is %d bytes,\n", size);

 rtl_fill_dummy(bufferptr, &size);

 pagenums = size / FW_8821AE_PAGE_SIZE;
 remainsize = size % FW_8821AE_PAGE_SIZE;

 if (pagenums > 8)
  pr_err("Page numbers should not greater then 8\n");

 for (page = 0; page < pagenums; page++) {
  offset = page * FW_8821AE_PAGE_SIZE;
  rtl_fw_page_write(hw, page, (bufferptr + offset),
      FW_8821AE_PAGE_SIZE);
 }

 if (remainsize) {
  offset = pagenums * FW_8821AE_PAGE_SIZE;
  page = pagenums;
  rtl_fw_page_write(hw, page, (bufferptr + offset), remainsize);
 }
}
