
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int iounmap (int ) ;
 int regbase ;

__attribute__((used)) static int wmt_ge_rops_remove(struct platform_device *pdev)
{
 iounmap(regbase);
 return 0;
}
