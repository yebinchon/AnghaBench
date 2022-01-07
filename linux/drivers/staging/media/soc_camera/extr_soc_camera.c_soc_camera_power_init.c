
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regulators; int num_regulators; } ;
struct soc_camera_subdev_desc {TYPE_1__ sd_pdata; } ;
struct device {int dummy; } ;


 int devm_regulator_bulk_get (struct device*,int ,int ) ;

int soc_camera_power_init(struct device *dev, struct soc_camera_subdev_desc *ssdd)
{

 return devm_regulator_bulk_get(dev, ssdd->sd_pdata.num_regulators,
           ssdd->sd_pdata.regulators);
}
