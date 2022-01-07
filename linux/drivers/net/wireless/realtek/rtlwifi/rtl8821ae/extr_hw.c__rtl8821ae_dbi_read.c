
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;


 int REG_DBI_ADDR ;
 int REG_DBI_FLAG ;
 int REG_DBI_RDATA ;
 int rtl_read_byte (struct rtl_priv*,int) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static u8 _rtl8821ae_dbi_read(struct rtl_priv *rtlpriv, u16 addr)
{
 u16 read_addr = addr & 0xfffc;
 u8 tmp = 0, count = 0, ret = 0;

 rtl_write_word(rtlpriv, REG_DBI_ADDR, read_addr);
 rtl_write_byte(rtlpriv, REG_DBI_FLAG, 0x2);
 tmp = rtl_read_byte(rtlpriv, REG_DBI_FLAG);
 count = 0;
 while (tmp && count < 20) {
  udelay(10);
  tmp = rtl_read_byte(rtlpriv, REG_DBI_FLAG);
  count++;
 }
 if (0 == tmp) {
  read_addr = REG_DBI_RDATA + addr % 4;
  ret = rtl_read_byte(rtlpriv, read_addr);
 }
 return ret;
}
