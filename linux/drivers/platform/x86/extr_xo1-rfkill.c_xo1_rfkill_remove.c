
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill {int dummy; } ;
struct platform_device {int dummy; } ;


 struct rfkill* platform_get_drvdata (struct platform_device*) ;
 int rfkill_destroy (struct rfkill*) ;
 int rfkill_unregister (struct rfkill*) ;

__attribute__((used)) static int xo1_rfkill_remove(struct platform_device *pdev)
{
 struct rfkill *rfk = platform_get_drvdata(pdev);
 rfkill_unregister(rfk);
 rfkill_destroy(rfk);
 return 0;
}
