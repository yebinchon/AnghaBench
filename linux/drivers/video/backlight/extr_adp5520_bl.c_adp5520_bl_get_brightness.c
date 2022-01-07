
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct backlight_device {int dummy; } ;
struct adp5520_bl {int current_brightness; int master; } ;


 int ADP5520_BL_VALUE ;
 int adp5520_read (int ,int ,int*) ;
 struct adp5520_bl* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int adp5520_bl_get_brightness(struct backlight_device *bl)
{
 struct adp5520_bl *data = bl_get_data(bl);
 int error;
 uint8_t reg_val;

 error = adp5520_read(data->master, ADP5520_BL_VALUE, &reg_val);

 return error ? data->current_brightness : reg_val;
}
