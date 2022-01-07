
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtl8xxxu_priv {int dummy; } ;


 int MCU_FW_RAM_SEL ;
 int REG_MCU_FW_DL ;
 int REG_RF_CTRL ;
 int REG_SYS_FUNC ;
 int REG_TX_REPORT_CTRL ;
 int SYS_FUNC_CPU_ENABLE ;
 int TX_REPORT_CTRL_TIMER_ENABLE ;
 int rtl8192eu_active_to_emu (struct rtl8xxxu_priv*) ;
 int rtl8192eu_active_to_lps (struct rtl8xxxu_priv*) ;
 int rtl8192eu_emu_to_disabled (struct rtl8xxxu_priv*) ;
 int rtl8xxxu_firmware_self_reset (struct rtl8xxxu_priv*) ;
 int rtl8xxxu_flush_fifo (struct rtl8xxxu_priv*) ;
 int rtl8xxxu_read16 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_read8 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_reset_8051 (struct rtl8xxxu_priv*) ;
 int rtl8xxxu_write16 (struct rtl8xxxu_priv*,int ,int ) ;
 int rtl8xxxu_write8 (struct rtl8xxxu_priv*,int ,int) ;

__attribute__((used)) static void rtl8192eu_power_off(struct rtl8xxxu_priv *priv)
{
 u8 val8;
 u16 val16;

 rtl8xxxu_flush_fifo(priv);

 val8 = rtl8xxxu_read8(priv, REG_TX_REPORT_CTRL);
 val8 &= ~TX_REPORT_CTRL_TIMER_ENABLE;
 rtl8xxxu_write8(priv, REG_TX_REPORT_CTRL, val8);


 rtl8xxxu_write8(priv, REG_RF_CTRL, 0x00);

 rtl8192eu_active_to_lps(priv);


 if (rtl8xxxu_read8(priv, REG_MCU_FW_DL) & MCU_FW_RAM_SEL)
  rtl8xxxu_firmware_self_reset(priv);


 val16 = rtl8xxxu_read16(priv, REG_SYS_FUNC);
 val16 &= ~SYS_FUNC_CPU_ENABLE;
 rtl8xxxu_write16(priv, REG_SYS_FUNC, val16);


 rtl8xxxu_write8(priv, REG_MCU_FW_DL, 0x00);

 rtl8xxxu_reset_8051(priv);

 rtl8192eu_active_to_emu(priv);
 rtl8192eu_emu_to_disabled(priv);
}
