
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb3503 {int clk; } ;
struct i2c_client {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct usb3503* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int usb3503_i2c_remove(struct i2c_client *i2c)
{
 struct usb3503 *hub;

 hub = i2c_get_clientdata(i2c);
 clk_disable_unprepare(hub->clk);

 return 0;
}
