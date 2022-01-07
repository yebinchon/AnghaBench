
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int aha1542_release (int ) ;
 int dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;

__attribute__((used)) static int aha1542_isa_remove(struct device *pdev,
        unsigned int ndev)
{
 aha1542_release(dev_get_drvdata(pdev));
 dev_set_drvdata(pdev, ((void*)0));
 return 0;
}
