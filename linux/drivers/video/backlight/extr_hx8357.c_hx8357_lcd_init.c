
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dummy; } ;
struct hx8357_data {int * im_pins; scalar_t__ use_im_pins; } ;


 int ARRAY_SIZE (int ) ;
 int HX8357_EXIT_SLEEP_MODE ;
 int HX8357_SET_DISPLAY_ON ;
 int HX8357_WRITE_MEMORY_START ;
 int gpio_set_value_cansleep (int ,int) ;
 int hx8357_seq_address_mode ;
 int hx8357_seq_column_address ;
 int hx8357_seq_display_frame ;
 int hx8357_seq_display_mode ;
 int hx8357_seq_gamma ;
 int hx8357_seq_page_address ;
 int hx8357_seq_panel_driving ;
 int hx8357_seq_panel_related ;
 int hx8357_seq_pixel_format ;
 int hx8357_seq_power ;
 int hx8357_seq_power_normal ;
 int hx8357_seq_rgb ;
 int hx8357_seq_undefined1 ;
 int hx8357_seq_undefined2 ;
 int hx8357_seq_vcom ;
 int hx8357_spi_write_array (struct lcd_device*,int ,int ) ;
 int hx8357_spi_write_byte (struct lcd_device*,int ) ;
 struct hx8357_data* lcd_get_data (struct lcd_device*) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int hx8357_lcd_init(struct lcd_device *lcdev)
{
 struct hx8357_data *lcd = lcd_get_data(lcdev);
 int ret;





 if (lcd->use_im_pins) {
  gpio_set_value_cansleep(lcd->im_pins[0], 1);
  gpio_set_value_cansleep(lcd->im_pins[1], 0);
  gpio_set_value_cansleep(lcd->im_pins[2], 1);
 }

 ret = hx8357_spi_write_array(lcdev, hx8357_seq_power,
    ARRAY_SIZE(hx8357_seq_power));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_array(lcdev, hx8357_seq_vcom,
    ARRAY_SIZE(hx8357_seq_vcom));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_array(lcdev, hx8357_seq_power_normal,
    ARRAY_SIZE(hx8357_seq_power_normal));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_array(lcdev, hx8357_seq_panel_driving,
    ARRAY_SIZE(hx8357_seq_panel_driving));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_array(lcdev, hx8357_seq_display_frame,
    ARRAY_SIZE(hx8357_seq_display_frame));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_array(lcdev, hx8357_seq_panel_related,
    ARRAY_SIZE(hx8357_seq_panel_related));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_array(lcdev, hx8357_seq_undefined1,
    ARRAY_SIZE(hx8357_seq_undefined1));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_array(lcdev, hx8357_seq_undefined2,
    ARRAY_SIZE(hx8357_seq_undefined2));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_array(lcdev, hx8357_seq_gamma,
    ARRAY_SIZE(hx8357_seq_gamma));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_array(lcdev, hx8357_seq_address_mode,
    ARRAY_SIZE(hx8357_seq_address_mode));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_array(lcdev, hx8357_seq_pixel_format,
    ARRAY_SIZE(hx8357_seq_pixel_format));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_array(lcdev, hx8357_seq_column_address,
    ARRAY_SIZE(hx8357_seq_column_address));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_array(lcdev, hx8357_seq_page_address,
    ARRAY_SIZE(hx8357_seq_page_address));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_array(lcdev, hx8357_seq_rgb,
    ARRAY_SIZE(hx8357_seq_rgb));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_array(lcdev, hx8357_seq_display_mode,
    ARRAY_SIZE(hx8357_seq_display_mode));
 if (ret < 0)
  return ret;

 ret = hx8357_spi_write_byte(lcdev, HX8357_EXIT_SLEEP_MODE);
 if (ret < 0)
  return ret;




 msleep(120);

 ret = hx8357_spi_write_byte(lcdev, HX8357_SET_DISPLAY_ON);
 if (ret < 0)
  return ret;

 usleep_range(5000, 7000);

 ret = hx8357_spi_write_byte(lcdev, HX8357_WRITE_MEMORY_START);
 if (ret < 0)
  return ret;

 return 0;
}
