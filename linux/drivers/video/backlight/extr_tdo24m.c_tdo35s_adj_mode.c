
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tdo24m {int mode; } ;


 int EINVAL ;


 int lcd_panel_config ;
 int lcd_qvga_pass_through_tdo35s ;
 int lcd_qvga_transfer ;
 int lcd_vga_pass_through_tdo35s ;
 int lcd_vga_transfer_tdo35s ;
 int tdo24m_writes (struct tdo24m*,int ) ;

__attribute__((used)) static int tdo35s_adj_mode(struct tdo24m *lcd, int mode)
{
 switch (mode) {
 case 128:
  tdo24m_writes(lcd, lcd_vga_pass_through_tdo35s);
  tdo24m_writes(lcd, lcd_panel_config);
  tdo24m_writes(lcd, lcd_vga_transfer_tdo35s);
  break;
 case 129:
  tdo24m_writes(lcd, lcd_qvga_pass_through_tdo35s);
  tdo24m_writes(lcd, lcd_panel_config);
  tdo24m_writes(lcd, lcd_qvga_transfer);
  break;
 default:
  return -EINVAL;
 }

 lcd->mode = mode;
 return 0;
}
