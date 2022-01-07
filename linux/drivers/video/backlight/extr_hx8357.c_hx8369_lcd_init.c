
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int HX8357_EXIT_SLEEP_MODE ;
 int HX8357_SET_DISPLAY_ON ;
 int hx8357_spi_write_array (struct lcd_device*,int ,int ) ;
 int hx8357_spi_write_byte (struct lcd_device*,int ) ;
 int hx8369_seq_display_related ;
 int hx8369_seq_extension_command ;
 int hx8369_seq_gamma_curve_related ;
 int hx8369_seq_gip ;
 int hx8369_seq_panel_waveform_cycle ;
 int hx8369_seq_power ;
 int hx8369_seq_set_address_mode ;
 int hx8369_seq_set_display_brightness ;
 int hx8369_seq_vcom ;
 int hx8369_seq_write_CABC_control ;
 int hx8369_seq_write_CABC_control_setting ;
 int hx8369_seq_write_CABC_min_brightness ;
 int msleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int hx8369_lcd_init(struct lcd_device *lcdev)
{
 int ret;

 ret = hx8357_spi_write_array(lcdev, hx8369_seq_extension_command,
    ARRAY_SIZE(hx8369_seq_extension_command));
 if (ret < 0)
  return ret;
 usleep_range(10000, 12000);

 ret = hx8357_spi_write_array(lcdev, hx8369_seq_display_related,
    ARRAY_SIZE(hx8369_seq_display_related));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_array(lcdev, hx8369_seq_panel_waveform_cycle,
    ARRAY_SIZE(hx8369_seq_panel_waveform_cycle));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_array(lcdev, hx8369_seq_set_address_mode,
    ARRAY_SIZE(hx8369_seq_set_address_mode));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_array(lcdev, hx8369_seq_vcom,
    ARRAY_SIZE(hx8369_seq_vcom));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_array(lcdev, hx8369_seq_gip,
    ARRAY_SIZE(hx8369_seq_gip));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_array(lcdev, hx8369_seq_power,
    ARRAY_SIZE(hx8369_seq_power));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_byte(lcdev, HX8357_EXIT_SLEEP_MODE);
 if (ret < 0)
  return ret;




 msleep(120);

 ret = hx8357_spi_write_array(lcdev, hx8369_seq_gamma_curve_related,
    ARRAY_SIZE(hx8369_seq_gamma_curve_related));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_byte(lcdev, HX8357_EXIT_SLEEP_MODE);
 if (ret < 0)
  return ret;
 usleep_range(1000, 1200);

 ret = hx8357_spi_write_array(lcdev, hx8369_seq_write_CABC_control,
    ARRAY_SIZE(hx8369_seq_write_CABC_control));
 if (ret < 0)
  return ret;
 usleep_range(10000, 12000);

 ret = hx8357_spi_write_array(lcdev,
   hx8369_seq_write_CABC_control_setting,
   ARRAY_SIZE(hx8369_seq_write_CABC_control_setting));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_array(lcdev,
   hx8369_seq_write_CABC_min_brightness,
   ARRAY_SIZE(hx8369_seq_write_CABC_min_brightness));
 if (ret < 0)
  return ret;
 usleep_range(10000, 12000);

 ret = hx8357_spi_write_array(lcdev, hx8369_seq_set_display_brightness,
    ARRAY_SIZE(hx8369_seq_set_display_brightness));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_byte(lcdev, HX8357_SET_DISPLAY_ON);
 if (ret < 0)
  return ret;

 return 0;
}
