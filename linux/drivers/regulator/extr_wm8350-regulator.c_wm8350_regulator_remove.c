
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8350 {int dummy; } ;
struct regulator_dev {int dummy; } ;
struct platform_device {size_t id; } ;
struct TYPE_2__ {int irq; } ;


 struct regulator_dev* platform_get_drvdata (struct platform_device*) ;
 struct wm8350* rdev_get_drvdata (struct regulator_dev*) ;
 int wm8350_free_irq (struct wm8350*,int ,struct regulator_dev*) ;
 TYPE_1__* wm8350_reg ;

__attribute__((used)) static int wm8350_regulator_remove(struct platform_device *pdev)
{
 struct regulator_dev *rdev = platform_get_drvdata(pdev);
 struct wm8350 *wm8350 = rdev_get_drvdata(rdev);

 wm8350_free_irq(wm8350, wm8350_reg[pdev->id].irq, rdev);

 return 0;
}
