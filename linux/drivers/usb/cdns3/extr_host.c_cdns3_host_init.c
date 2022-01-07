
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3_role_driver {char* name; int state; int stop; int start; } ;
struct cdns3 {struct cdns3_role_driver** roles; int dev; } ;


 int CDNS3_ROLE_STATE_INACTIVE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t USB_ROLE_HOST ;
 int __cdns3_host_init ;
 int cdns3_host_exit ;
 struct cdns3_role_driver* devm_kzalloc (int ,int,int ) ;

int cdns3_host_init(struct cdns3 *cdns)
{
 struct cdns3_role_driver *rdrv;

 rdrv = devm_kzalloc(cdns->dev, sizeof(*rdrv), GFP_KERNEL);
 if (!rdrv)
  return -ENOMEM;

 rdrv->start = __cdns3_host_init;
 rdrv->stop = cdns3_host_exit;
 rdrv->state = CDNS3_ROLE_STATE_INACTIVE;
 rdrv->name = "host";

 cdns->roles[USB_ROLE_HOST] = rdrv;

 return 0;
}
