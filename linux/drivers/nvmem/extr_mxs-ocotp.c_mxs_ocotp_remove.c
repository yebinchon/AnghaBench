
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mxs_ocotp {int clk; } ;


 int clk_unprepare (int ) ;
 struct mxs_ocotp* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mxs_ocotp_remove(struct platform_device *pdev)
{
 struct mxs_ocotp *otp = platform_get_drvdata(pdev);

 clk_unprepare(otp->clk);

 return 0;
}
