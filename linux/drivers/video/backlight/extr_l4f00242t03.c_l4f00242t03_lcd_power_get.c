
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dummy; } ;
struct l4f00242t03_priv {int lcd_state; } ;


 struct l4f00242t03_priv* lcd_get_data (struct lcd_device*) ;

__attribute__((used)) static int l4f00242t03_lcd_power_get(struct lcd_device *ld)
{
 struct l4f00242t03_priv *priv = lcd_get_data(ld);

 return priv->lcd_state;
}
