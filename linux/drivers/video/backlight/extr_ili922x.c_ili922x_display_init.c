
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int REG_COMPARE_1 ;
 int REG_COMPARE_2 ;
 int REG_DISPLAY_CONTROL_1 ;
 int REG_DISPLAY_CONTROL_2 ;
 int REG_DISPLAY_CONTROL_3 ;
 int REG_DRIVER_OUTPUT_CONTROL ;
 int REG_ENTRY_MODE ;
 int REG_EXT_INTF_CONTROL ;
 int REG_FIRST_SCREEN_DRIVE_POS ;
 int REG_FRAME_CYCLE_CONTROL ;
 int REG_GAMMA_CONTROL_1 ;
 int REG_GAMMA_CONTROL_10 ;
 int REG_GAMMA_CONTROL_2 ;
 int REG_GAMMA_CONTROL_3 ;
 int REG_GAMMA_CONTROL_4 ;
 int REG_GAMMA_CONTROL_5 ;
 int REG_GAMMA_CONTROL_6 ;
 int REG_GAMMA_CONTROL_7 ;
 int REG_GAMMA_CONTROL_8 ;
 int REG_GAMMA_CONTROL_9 ;
 int REG_GATE_SCAN_CONTROL ;
 int REG_LCD_AC_DRIVEING_CONTROL ;
 int REG_RAM_ADDRESS_SET ;
 int REG_RAM_ADDR_POS_H ;
 int REG_RAM_ADDR_POS_V ;
 int REG_SECOND_SCREEN_DRIVE_POS ;
 int REG_START_OSCILLATION ;
 int REG_VERT_SCROLL_CONTROL ;
 int ili922x_poweron (struct spi_device*) ;
 int ili922x_reg_dump (struct spi_device*) ;
 int ili922x_write (struct spi_device*,int ,int) ;
 int set_write_to_gram_reg (struct spi_device*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ili922x_display_init(struct spi_device *spi)
{
 ili922x_write(spi, REG_START_OSCILLATION, 1);
 usleep_range(10000, 10500);
 ili922x_write(spi, REG_DRIVER_OUTPUT_CONTROL, 0x691B);
 ili922x_write(spi, REG_LCD_AC_DRIVEING_CONTROL, 0x0700);
 ili922x_write(spi, REG_ENTRY_MODE, 0x1030);
 ili922x_write(spi, REG_COMPARE_1, 0x0000);
 ili922x_write(spi, REG_COMPARE_2, 0x0000);
 ili922x_write(spi, REG_DISPLAY_CONTROL_1, 0x0037);
 ili922x_write(spi, REG_DISPLAY_CONTROL_2, 0x0202);
 ili922x_write(spi, REG_DISPLAY_CONTROL_3, 0x0000);
 ili922x_write(spi, REG_FRAME_CYCLE_CONTROL, 0x0000);


 ili922x_write(spi, REG_EXT_INTF_CONTROL, 0x0110);

 ili922x_poweron(spi);

 ili922x_write(spi, REG_GAMMA_CONTROL_1, 0x0302);
 ili922x_write(spi, REG_GAMMA_CONTROL_2, 0x0407);
 ili922x_write(spi, REG_GAMMA_CONTROL_3, 0x0304);
 ili922x_write(spi, REG_GAMMA_CONTROL_4, 0x0203);
 ili922x_write(spi, REG_GAMMA_CONTROL_5, 0x0706);
 ili922x_write(spi, REG_GAMMA_CONTROL_6, 0x0407);
 ili922x_write(spi, REG_GAMMA_CONTROL_7, 0x0706);
 ili922x_write(spi, REG_GAMMA_CONTROL_8, 0x0000);
 ili922x_write(spi, REG_GAMMA_CONTROL_9, 0x0C06);
 ili922x_write(spi, REG_GAMMA_CONTROL_10, 0x0F00);
 ili922x_write(spi, REG_RAM_ADDRESS_SET, 0x0000);
 ili922x_write(spi, REG_GATE_SCAN_CONTROL, 0x0000);
 ili922x_write(spi, REG_VERT_SCROLL_CONTROL, 0x0000);
 ili922x_write(spi, REG_FIRST_SCREEN_DRIVE_POS, 0xDB00);
 ili922x_write(spi, REG_SECOND_SCREEN_DRIVE_POS, 0xDB00);
 ili922x_write(spi, REG_RAM_ADDR_POS_H, 0xAF00);
 ili922x_write(spi, REG_RAM_ADDR_POS_V, 0xDB00);
 ili922x_reg_dump(spi);
 set_write_to_gram_reg(spi);
}
