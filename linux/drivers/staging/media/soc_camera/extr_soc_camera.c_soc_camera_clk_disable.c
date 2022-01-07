
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_clk {struct soc_camera_device* priv; } ;
struct soc_camera_host {TYPE_1__* ops; } ;
struct soc_camera_device {int parent; } ;
struct TYPE_2__ {int owner; } ;


 int module_put (int ) ;
 int soc_camera_clock_stop (struct soc_camera_host*) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static void soc_camera_clk_disable(struct v4l2_clk *clk)
{
 struct soc_camera_device *icd = clk->priv;
 struct soc_camera_host *ici;

 if (!icd || !icd->parent)
  return;

 ici = to_soc_camera_host(icd->parent);

 soc_camera_clock_stop(ici);

 module_put(ici->ops->owner);
}
