
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_info {struct ccw_device* cdev; } ;
struct ccw_device {int handler; int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int NR_3215 ;
 struct raw3215_info* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,struct raw3215_info*) ;
 struct raw3215_info** raw3215 ;
 struct raw3215_info* raw3215_alloc_info () ;
 int raw3215_device_lock ;
 int raw3215_free_info (struct raw3215_info*) ;
 int raw3215_irq ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int raw3215_probe (struct ccw_device *cdev)
{
 struct raw3215_info *raw;
 int line;


 if (raw3215[0] && (raw3215[0] == dev_get_drvdata(&cdev->dev)))
  return 0;

 raw = raw3215_alloc_info();
 if (raw == ((void*)0))
  return -ENOMEM;

 raw->cdev = cdev;
 dev_set_drvdata(&cdev->dev, raw);
 cdev->handler = raw3215_irq;

 spin_lock(&raw3215_device_lock);
 for (line = 0; line < NR_3215; line++) {
  if (!raw3215[line]) {
   raw3215[line] = raw;
   break;
  }
 }
 spin_unlock(&raw3215_device_lock);
 if (line == NR_3215) {
  raw3215_free_info(raw);
  return -ENODEV;
 }

 return 0;
}
