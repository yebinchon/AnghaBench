
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3 {int * ulpi; } ;


 int ulpi_unregister_interface (int *) ;

void dwc3_ulpi_exit(struct dwc3 *dwc)
{
 if (dwc->ulpi) {
  ulpi_unregister_interface(dwc->ulpi);
  dwc->ulpi = ((void*)0);
 }
}
