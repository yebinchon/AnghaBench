
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 long POLLING_LLT_THRESHOLD ;
 int REG_LLT_INIT ;
 int _LLT_INIT_ADDR (int) ;
 int _LLT_INIT_DATA (int) ;
 scalar_t__ _LLT_NO_ACTIVE ;
 int _LLT_OP (int ) ;
 scalar_t__ _LLT_OP_VALUE (int) ;
 int _LLT_WRITE_ACCESS ;
 int pr_err (char*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_dword (struct rtl_priv*,int ) ;
 int rtl_write_dword (struct rtl_priv*,int ,int) ;

__attribute__((used)) static bool _rtl92ce_llt_write(struct ieee80211_hw *hw, u32 address, u32 data)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 bool status = 1;
 long count = 0;
 u32 value = _LLT_INIT_ADDR(address) |
     _LLT_INIT_DATA(data) | _LLT_OP(_LLT_WRITE_ACCESS);

 rtl_write_dword(rtlpriv, REG_LLT_INIT, value);

 do {
  value = rtl_read_dword(rtlpriv, REG_LLT_INIT);
  if (_LLT_NO_ACTIVE == _LLT_OP_VALUE(value))
   break;

  if (count > POLLING_LLT_THRESHOLD) {
   pr_err("Failed to polling write LLT done at address %d!\n",
          address);
   status = 0;
   break;
  }
 } while (++count);

 return status;
}
