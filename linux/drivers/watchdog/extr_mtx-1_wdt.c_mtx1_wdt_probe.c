
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {int default_ticks; int timer; int inuse; scalar_t__ queue; int stop; int lock; int gpiod; } ;


 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int devm_gpiod_get (int *,int *,int ) ;
 int init_completion (int *) ;
 int misc_register (int *) ;
 TYPE_1__ mtx1_wdt_device ;
 int mtx1_wdt_misc ;
 int mtx1_wdt_start () ;
 int mtx1_wdt_trigger ;
 int spin_lock_init (int *) ;
 int ticks ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int mtx1_wdt_probe(struct platform_device *pdev)
{
 int ret;

 mtx1_wdt_device.gpiod = devm_gpiod_get(&pdev->dev,
            ((void*)0), GPIOD_OUT_HIGH);
 if (IS_ERR(mtx1_wdt_device.gpiod)) {
  dev_err(&pdev->dev, "failed to request gpio");
  return PTR_ERR(mtx1_wdt_device.gpiod);
 }

 spin_lock_init(&mtx1_wdt_device.lock);
 init_completion(&mtx1_wdt_device.stop);
 mtx1_wdt_device.queue = 0;
 clear_bit(0, &mtx1_wdt_device.inuse);
 timer_setup(&mtx1_wdt_device.timer, mtx1_wdt_trigger, 0);
 mtx1_wdt_device.default_ticks = ticks;

 ret = misc_register(&mtx1_wdt_misc);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to register\n");
  return ret;
 }
 mtx1_wdt_start();
 dev_info(&pdev->dev, "MTX-1 Watchdog driver\n");
 return 0;
}
