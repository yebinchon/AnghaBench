
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcon_priv {int bl_val; } ;
struct backlight_device {int dummy; } ;


 struct dcon_priv* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int dcon_bl_get(struct backlight_device *dev)
{
 struct dcon_priv *dcon = bl_get_data(dev);

 return dcon->bl_val;
}
