
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int generic_NCR5380_release_resources (int ) ;

__attribute__((used)) static int generic_NCR5380_isa_remove(struct device *pdev,
                                      unsigned int ndev)
{
 generic_NCR5380_release_resources(dev_get_drvdata(pdev));
 dev_set_drvdata(pdev, ((void*)0));
 return 0;
}
