
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_info {int dummy; } ;
struct ccw_device {int dev; } ;


 unsigned int NR_3215 ;
 int ccw_device_set_offline (struct ccw_device*) ;
 struct raw3215_info* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 struct raw3215_info** raw3215 ;
 int raw3215_device_lock ;
 int raw3215_free_info (struct raw3215_info*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void raw3215_remove (struct ccw_device *cdev)
{
 struct raw3215_info *raw;
 unsigned int line;

 ccw_device_set_offline(cdev);
 raw = dev_get_drvdata(&cdev->dev);
 if (raw) {
  spin_lock(&raw3215_device_lock);
  for (line = 0; line < NR_3215; line++)
   if (raw3215[line] == raw)
    break;
  raw3215[line] = ((void*)0);
  spin_unlock(&raw3215_device_lock);
  dev_set_drvdata(&cdev->dev, ((void*)0));
  raw3215_free_info(raw);
 }
}
