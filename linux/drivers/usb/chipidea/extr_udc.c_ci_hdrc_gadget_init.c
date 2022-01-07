
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_role_driver {char* name; int irq; int stop; int start; } ;
struct ci_hdrc {struct ci_role_driver** roles; int dev; } ;


 int CAP_DCCPARAMS ;
 size_t CI_ROLE_GADGET ;
 int DCCPARAMS_DC ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 struct ci_role_driver* devm_kzalloc (int ,int,int ) ;
 int hw_read (struct ci_hdrc*,int ,int ) ;
 int udc_id_switch_for_device ;
 int udc_id_switch_for_host ;
 int udc_irq ;
 int udc_start (struct ci_hdrc*) ;

int ci_hdrc_gadget_init(struct ci_hdrc *ci)
{
 struct ci_role_driver *rdrv;
 int ret;

 if (!hw_read(ci, CAP_DCCPARAMS, DCCPARAMS_DC))
  return -ENXIO;

 rdrv = devm_kzalloc(ci->dev, sizeof(*rdrv), GFP_KERNEL);
 if (!rdrv)
  return -ENOMEM;

 rdrv->start = udc_id_switch_for_device;
 rdrv->stop = udc_id_switch_for_host;
 rdrv->irq = udc_irq;
 rdrv->name = "gadget";

 ret = udc_start(ci);
 if (!ret)
  ci->roles[CI_ROLE_GADGET] = rdrv;

 return ret;
}
