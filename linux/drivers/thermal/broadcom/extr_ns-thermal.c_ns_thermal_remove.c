
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ns_thermal {int pvtmon; } ;


 int iounmap (int ) ;
 struct ns_thermal* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ns_thermal_remove(struct platform_device *pdev)
{
 struct ns_thermal *ns_thermal = platform_get_drvdata(pdev);

 iounmap(ns_thermal->pvtmon);

 return 0;
}
