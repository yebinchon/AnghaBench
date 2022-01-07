
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_clk {struct soc_camera_device* priv; } ;
struct soc_camera_host {TYPE_1__* ops; } ;
struct soc_camera_device {int parent; } ;
struct TYPE_2__ {int owner; } ;


 int ENODEV ;
 int soc_camera_clock_start (struct soc_camera_host*) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static int soc_camera_clk_enable(struct v4l2_clk *clk)
{
 struct soc_camera_device *icd = clk->priv;
 struct soc_camera_host *ici;

 if (!icd || !icd->parent)
  return -ENODEV;

 ici = to_soc_camera_host(icd->parent);

 if (!try_module_get(ici->ops->owner))
  return -ENODEV;





 return soc_camera_clock_start(ici);
}
