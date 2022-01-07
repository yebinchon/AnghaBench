
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tdo24m {int (* adj_mode ) (struct tdo24m*,int ) ;int mode; } ;


 int lcd_panel_on ;
 int lcd_panel_reset ;
 int stub1 (struct tdo24m*,int ) ;
 int tdo24m_writes (struct tdo24m*,int ) ;

__attribute__((used)) static int tdo24m_power_on(struct tdo24m *lcd)
{
 int err;

 err = tdo24m_writes(lcd, lcd_panel_on);
 if (err)
  goto out;

 err = tdo24m_writes(lcd, lcd_panel_reset);
 if (err)
  goto out;

 err = lcd->adj_mode(lcd, lcd->mode);
out:
 return err;
}
