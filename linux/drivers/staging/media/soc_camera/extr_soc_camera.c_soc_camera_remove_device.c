
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_camera_host {struct soc_camera_device* icd; TYPE_1__* ops; } ;
struct soc_camera_device {int clk; int parent; } ;
struct TYPE_2__ {int (* remove ) (struct soc_camera_device*) ;} ;


 scalar_t__ WARN_ON (int) ;
 int soc_camera_clock_stop (struct soc_camera_host*) ;
 int stub1 (struct soc_camera_device*) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static void soc_camera_remove_device(struct soc_camera_device *icd)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->parent);

 if (WARN_ON(icd != ici->icd))
  return;

 if (ici->ops->remove)
  ici->ops->remove(icd);
 if (!icd->clk)
  soc_camera_clock_stop(ici);
 ici->icd = ((void*)0);
}
