
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MSI_EC_COMMAND_LCD_LEVEL ;
 int ec_transaction (int ,int*,int,int*,int) ;

__attribute__((used)) static int get_auto_brightness(void)
{
 u8 wdata = 4, rdata;
 int result;

 result = ec_transaction(MSI_EC_COMMAND_LCD_LEVEL, &wdata, 1,
    &rdata, 1);
 if (result < 0)
  return result;

 return !!(rdata & 8);
}
