
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;


 int BIT (int ) ;
 int REG_DBI_ADDR ;
 int REG_DBI_FLAG ;
 int REG_DBI_WDATA ;
 int rtl_read_byte (struct rtl_priv*,int) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void _rtl8723be_dbi_write(struct rtl_priv *rtlpriv, u16 addr, u8 data)
{
 u8 tmp = 0, count = 0;
 u16 write_addr = 0, remainder = addr % 4;


 write_addr = REG_DBI_WDATA + remainder;
 rtl_write_byte(rtlpriv, write_addr, data);


 write_addr = (addr & 0xfffc) | (BIT(0) << (remainder + 12));
 rtl_write_word(rtlpriv, REG_DBI_ADDR, write_addr);


 rtl_write_byte(rtlpriv, REG_DBI_FLAG, 0x1);

 tmp = rtl_read_byte(rtlpriv, REG_DBI_FLAG);
 count = 0;
 while (tmp && count < 20) {
  udelay(10);
  tmp = rtl_read_byte(rtlpriv, REG_DBI_FLAG);
  count++;
 }
}
