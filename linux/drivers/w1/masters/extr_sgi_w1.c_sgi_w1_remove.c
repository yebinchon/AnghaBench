
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sgi_w1_device {int bus_master; } ;
struct platform_device {int dummy; } ;


 struct sgi_w1_device* platform_get_drvdata (struct platform_device*) ;
 int w1_remove_master_device (int *) ;

__attribute__((used)) static int sgi_w1_remove(struct platform_device *pdev)
{
 struct sgi_w1_device *sdev = platform_get_drvdata(pdev);

 w1_remove_master_device(&sdev->bus_master);

 return 0;
}
