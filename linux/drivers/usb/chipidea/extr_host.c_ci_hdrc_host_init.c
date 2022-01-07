
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_role_driver {char* name; int irq; int stop; int start; } ;
struct ci_hdrc {struct ci_role_driver** roles; int dev; } ;


 int CAP_DCCPARAMS ;
 size_t CI_ROLE_HOST ;
 int DCCPARAMS_HC ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 struct ci_role_driver* devm_kzalloc (int ,int,int ) ;
 int host_irq ;
 int host_start ;
 int host_stop ;
 int hw_read (struct ci_hdrc*,int ,int ) ;

int ci_hdrc_host_init(struct ci_hdrc *ci)
{
 struct ci_role_driver *rdrv;

 if (!hw_read(ci, CAP_DCCPARAMS, DCCPARAMS_HC))
  return -ENXIO;

 rdrv = devm_kzalloc(ci->dev, sizeof(struct ci_role_driver), GFP_KERNEL);
 if (!rdrv)
  return -ENOMEM;

 rdrv->start = host_start;
 rdrv->stop = host_stop;
 rdrv->irq = host_irq;
 rdrv->name = "host";
 ci->roles[CI_ROLE_HOST] = rdrv;

 return 0;
}
