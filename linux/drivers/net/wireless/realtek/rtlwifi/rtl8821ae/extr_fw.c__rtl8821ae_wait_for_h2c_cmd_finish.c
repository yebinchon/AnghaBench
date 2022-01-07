
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;


 int REG_HMETFR ;
 int mdelay (int) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;

__attribute__((used)) static void _rtl8821ae_wait_for_h2c_cmd_finish(struct rtl_priv *rtlpriv)
{
 u8 val;
 u16 count = 0;

 do {
  val = rtl_read_byte(rtlpriv, REG_HMETFR);
  mdelay(1);
  count++;
 } while ((val & 0x0F) && (count < 1000));
}
