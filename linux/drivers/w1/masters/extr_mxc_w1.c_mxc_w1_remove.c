
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mxc_w1_device {int clk; int bus_master; } ;


 int clk_disable_unprepare (int ) ;
 struct mxc_w1_device* platform_get_drvdata (struct platform_device*) ;
 int w1_remove_master_device (int *) ;

__attribute__((used)) static int mxc_w1_remove(struct platform_device *pdev)
{
 struct mxc_w1_device *mdev = platform_get_drvdata(pdev);

 w1_remove_master_device(&mdev->bus_master);

 clk_disable_unprepare(mdev->clk);

 return 0;
}
