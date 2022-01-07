
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3_role_driver {char* name; int * resume; int * suspend; int state; int stop; int start; } ;
struct cdns3 {struct cdns3_role_driver** roles; int dev; } ;


 int CDNS3_ROLE_STATE_INACTIVE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t USB_ROLE_NONE ;
 int cdns3_idle_role_start ;
 int cdns3_idle_role_stop ;
 struct cdns3_role_driver* devm_kzalloc (int ,int,int ) ;

__attribute__((used)) static int cdns3_idle_init(struct cdns3 *cdns)
{
 struct cdns3_role_driver *rdrv;

 rdrv = devm_kzalloc(cdns->dev, sizeof(*rdrv), GFP_KERNEL);
 if (!rdrv)
  return -ENOMEM;

 rdrv->start = cdns3_idle_role_start;
 rdrv->stop = cdns3_idle_role_stop;
 rdrv->state = CDNS3_ROLE_STATE_INACTIVE;
 rdrv->suspend = ((void*)0);
 rdrv->resume = ((void*)0);
 rdrv->name = "idle";

 cdns->roles[USB_ROLE_NONE] = rdrv;

 return 0;
}
