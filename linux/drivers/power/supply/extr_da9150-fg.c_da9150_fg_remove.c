
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct da9150_fg {int work; scalar_t__ interval; } ;


 int cancel_delayed_work (int *) ;
 struct da9150_fg* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int da9150_fg_remove(struct platform_device *pdev)
{
 struct da9150_fg *fg = platform_get_drvdata(pdev);

 if (fg->interval)
  cancel_delayed_work(&fg->work);

 return 0;
}
