
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;


 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 int dev_err (int *,char*,int) ;
 int device_init_wakeup (int *,int) ;
 int devm_request_threaded_irq (int *,int,int *,int ,int,int ,struct i2c_client*) ;
 int enable_irq_wake (int) ;
 TYPE_2__ isl1208_driver ;
 int isl1208_rtc_interrupt ;

__attribute__((used)) static int isl1208_setup_irq(struct i2c_client *client, int irq)
{
 int rc = devm_request_threaded_irq(&client->dev, irq, ((void*)0),
     isl1208_rtc_interrupt,
     IRQF_SHARED | IRQF_ONESHOT,
     isl1208_driver.driver.name,
     client);
 if (!rc) {
  device_init_wakeup(&client->dev, 1);
  enable_irq_wake(irq);
 } else {
  dev_err(&client->dev,
   "Unable to request irq %d, no alarm support\n",
   irq);
 }
 return rc;
}
