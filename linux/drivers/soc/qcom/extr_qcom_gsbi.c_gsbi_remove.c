
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct gsbi_info {int hclk; } ;


 int clk_disable_unprepare (int ) ;
 struct gsbi_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int gsbi_remove(struct platform_device *pdev)
{
 struct gsbi_info *gsbi = platform_get_drvdata(pdev);

 clk_disable_unprepare(gsbi->hclk);

 return 0;
}
