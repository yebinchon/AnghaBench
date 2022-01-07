
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int MSI_EC_COMMAND_LCD_LEVEL ;
 int ec_transaction (int ,scalar_t__*,int,scalar_t__*,int) ;

__attribute__((used)) static int get_lcd_level(void)
{
 u8 wdata = 0, rdata;
 int result;

 result = ec_transaction(MSI_EC_COMMAND_LCD_LEVEL, &wdata, 1,
    &rdata, 1);
 if (result < 0)
  return result;

 return (int) rdata / 31;
}
