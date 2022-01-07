
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct TYPE_2__ {scalar_t__ brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int backlight_update_status (struct backlight_device*) ;
 struct backlight_device* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int bd6107_remove(struct i2c_client *client)
{
 struct backlight_device *backlight = i2c_get_clientdata(client);

 backlight->props.brightness = 0;
 backlight_update_status(backlight);

 return 0;
}
