
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siox_master {int dummy; } ;
struct platform_device {int dummy; } ;


 struct siox_master* platform_get_drvdata (struct platform_device*) ;
 int siox_master_unregister (struct siox_master*) ;

__attribute__((used)) static int siox_gpio_remove(struct platform_device *pdev)
{
 struct siox_master *master = platform_get_drvdata(pdev);

 siox_master_unregister(master);

 return 0;
}
