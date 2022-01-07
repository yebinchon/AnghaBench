
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ili9320 {int dummy; } ;


 int FB_BLANK_POWERDOWN ;
 int ili9320_power (struct ili9320*,int ) ;

void ili9320_shutdown(struct ili9320 *lcd)
{
 ili9320_power(lcd, FB_BLANK_POWERDOWN);
}
