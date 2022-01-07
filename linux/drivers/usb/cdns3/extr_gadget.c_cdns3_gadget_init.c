
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3_role_driver {char* name; int state; int resume; int suspend; int stop; int start; } ;
struct cdns3 {struct cdns3_role_driver** roles; int dev; } ;


 int CDNS3_ROLE_STATE_INACTIVE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t USB_ROLE_DEVICE ;
 int __cdns3_gadget_init ;
 int cdns3_gadget_exit ;
 int cdns3_gadget_resume ;
 int cdns3_gadget_suspend ;
 struct cdns3_role_driver* devm_kzalloc (int ,int,int ) ;

int cdns3_gadget_init(struct cdns3 *cdns)
{
 struct cdns3_role_driver *rdrv;

 rdrv = devm_kzalloc(cdns->dev, sizeof(*rdrv), GFP_KERNEL);
 if (!rdrv)
  return -ENOMEM;

 rdrv->start = __cdns3_gadget_init;
 rdrv->stop = cdns3_gadget_exit;
 rdrv->suspend = cdns3_gadget_suspend;
 rdrv->resume = cdns3_gadget_resume;
 rdrv->state = CDNS3_ROLE_STATE_INACTIVE;
 rdrv->name = "gadget";
 cdns->roles[USB_ROLE_DEVICE] = rdrv;

 return 0;
}
