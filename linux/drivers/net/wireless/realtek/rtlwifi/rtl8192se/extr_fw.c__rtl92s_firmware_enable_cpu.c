
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_INIT ;
 int DBG_LOUD ;
 int FEN_CPUEN ;
 int IMEM_RDY ;
 int REG_SYS_FUNC_EN ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int SYS_CLKR ;
 int SYS_CPU_CLKSEL ;
 int TCR ;
 int _rtl92s_fw_set_rqpn (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;
 int rtl_read_word (struct rtl_priv*,int ) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static bool _rtl92s_firmware_enable_cpu(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 ichecktime = 200;
 u16 tmpu2b;
 u8 tmpu1b, cpustatus = 0;

 _rtl92s_fw_set_rqpn(hw);


 tmpu1b = rtl_read_byte(rtlpriv, SYS_CLKR);

 rtl_write_byte(rtlpriv, SYS_CLKR, (tmpu1b | SYS_CPU_CLKSEL));

 tmpu2b = rtl_read_word(rtlpriv, REG_SYS_FUNC_EN);
 rtl_write_word(rtlpriv, REG_SYS_FUNC_EN, (tmpu2b | FEN_CPUEN));


 do {
  cpustatus = rtl_read_byte(rtlpriv, TCR);
  if (cpustatus & IMEM_RDY) {
   RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
     "IMEM Ready after CPU has refilled\n");
   break;
  }

  udelay(100);
 } while (ichecktime--);

 if (!(cpustatus & IMEM_RDY))
  return 0;

 return 1;
}
