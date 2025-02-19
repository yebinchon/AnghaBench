
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;


 int MASKDWORD ;
 int rtl_read_byte (struct rtl_priv*,int) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;

__attribute__((used)) static void halbtc_bitmask_write_1byte(void *bt_context, u32 reg_addr,
           u32 bit_mask, u8 data)
{
 struct btc_coexist *btcoexist = (struct btc_coexist *)bt_context;
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 u8 original_value, bit_shift = 0;
 u8 i;

 if (bit_mask != MASKDWORD) {
  original_value = rtl_read_byte(rtlpriv, reg_addr);
  for (i = 0; i <= 7; i++) {
   if ((bit_mask>>i) & 0x1)
    break;
  }
  bit_shift = i;
  data = (original_value & (~bit_mask)) |
   ((data << bit_shift) & bit_mask);
 }
 rtl_write_byte(rtlpriv, reg_addr, data);
}
