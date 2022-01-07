
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_get_drvdata (struct device*) ;
 int ufshcd_runtime_resume (int ) ;

__attribute__((used)) static int tc_dwc_g210_pci_runtime_resume(struct device *dev)
{
 return ufshcd_runtime_resume(dev_get_drvdata(dev));
}
