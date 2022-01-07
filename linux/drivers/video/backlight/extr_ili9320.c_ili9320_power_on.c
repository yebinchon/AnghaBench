
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ili9320 {int display1; int initialised; } ;


 int ILI9320_DISPLAY1 ;
 int ILI9320_DISPLAY1_BASEE ;
 int ILI9320_DISPLAY1_D (int) ;
 int ili9320_init_chip (struct ili9320*) ;
 int ili9320_write (struct ili9320*,int ,int) ;

__attribute__((used)) static inline int ili9320_power_on(struct ili9320 *lcd)
{
 if (!lcd->initialised)
  ili9320_init_chip(lcd);

 lcd->display1 |= (ILI9320_DISPLAY1_D(3) | ILI9320_DISPLAY1_BASEE);
 ili9320_write(lcd, ILI9320_DISPLAY1, lcd->display1);

 return 0;
}
