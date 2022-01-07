
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {int mutex; } ;
struct backlight_device {int dev; } ;


 int acx565akm_bl_update_status (struct backlight_device*) ;
 struct panel_drv_data* dev_get_drvdata (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int acx565akm_bl_update_status_locked(struct backlight_device *dev)
{
 struct panel_drv_data *ddata = dev_get_drvdata(&dev->dev);
 int r;

 mutex_lock(&ddata->mutex);
 r = acx565akm_bl_update_status(dev);
 mutex_unlock(&ddata->mutex);

 return r;
}
