
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3 {scalar_t__ dr_mode; } ;


 scalar_t__ USB_DR_MODE_OTG ;
 scalar_t__ USB_DR_MODE_PERIPHERAL ;
 scalar_t__ cdns3_get_id (struct cdns3*) ;

int cdns3_is_device(struct cdns3 *cdns)
{
 if (cdns->dr_mode == USB_DR_MODE_PERIPHERAL)
  return 1;
 else if (cdns->dr_mode == USB_DR_MODE_OTG)
  if (cdns3_get_id(cdns))
   return 1;

 return 0;
}
