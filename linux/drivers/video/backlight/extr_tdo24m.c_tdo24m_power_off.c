
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tdo24m {int dummy; } ;


 int lcd_panel_off ;
 int tdo24m_writes (struct tdo24m*,int ) ;

__attribute__((used)) static int tdo24m_power_off(struct tdo24m *lcd)
{
 return tdo24m_writes(lcd, lcd_panel_off);
}
