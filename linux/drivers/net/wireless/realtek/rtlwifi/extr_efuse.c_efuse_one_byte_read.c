
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct rtl_priv {TYPE_1__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__* maps; } ;


 size_t EFUSE_CTRL ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,scalar_t__) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;

int efuse_one_byte_read(struct ieee80211_hw *hw, u16 addr, u8 *data)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 tmpidx = 0;
 int result;

 rtl_write_byte(rtlpriv, rtlpriv->cfg->maps[EFUSE_CTRL] + 1,
         (u8) (addr & 0xff));
 rtl_write_byte(rtlpriv, rtlpriv->cfg->maps[EFUSE_CTRL] + 2,
         ((u8) ((addr >> 8) & 0x03)) |
         (rtl_read_byte(rtlpriv,
          rtlpriv->cfg->maps[EFUSE_CTRL] + 2) &
   0xFC));

 rtl_write_byte(rtlpriv, rtlpriv->cfg->maps[EFUSE_CTRL] + 3, 0x72);

 while (!(0x80 & rtl_read_byte(rtlpriv,
          rtlpriv->cfg->maps[EFUSE_CTRL] + 3))
        && (tmpidx < 100)) {
  tmpidx++;
 }

 if (tmpidx < 100) {
  *data = rtl_read_byte(rtlpriv, rtlpriv->cfg->maps[EFUSE_CTRL]);
  result = 1;
 } else {
  *data = 0xff;
  result = 0;
 }
 return result;
}
