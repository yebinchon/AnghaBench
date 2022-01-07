
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3 {int dr_mode; int dev; } ;


 int EINVAL ;



 int cdns3_init_otg_mode (struct cdns3*) ;
 int cdns3_set_mode (struct cdns3*,int const) ;
 int dev_err (int ,char*,int) ;

int cdns3_drd_update_mode(struct cdns3 *cdns)
{
 int ret = 0;

 switch (cdns->dr_mode) {
 case 128:
  ret = cdns3_set_mode(cdns, 128);
  break;
 case 130:
  ret = cdns3_set_mode(cdns, 130);
  break;
 case 129:
  ret = cdns3_init_otg_mode(cdns);
  break;
 default:
  dev_err(cdns->dev, "Unsupported mode of operation %d\n",
   cdns->dr_mode);
  return -EINVAL;
 }

 return ret;
}
