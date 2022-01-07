
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3 {int ulpi; int dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int ,char*) ;
 int dwc3_ulpi_ops ;
 int ulpi_register_interface (int ,int *) ;

int dwc3_ulpi_init(struct dwc3 *dwc)
{

 dwc->ulpi = ulpi_register_interface(dwc->dev, &dwc3_ulpi_ops);
 if (IS_ERR(dwc->ulpi)) {
  dev_err(dwc->dev, "failed to register ULPI interface");
  return PTR_ERR(dwc->ulpi);
 }

 return 0;
}
