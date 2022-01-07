
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int regulators; int num_regulators; } ;
struct soc_camera_subdev_desc {TYPE_1__ sd_pdata; } ;
struct soc_camera_device {int user_height; int user_width; TYPE_3__* pdev; struct soc_camera_desc* sdesc; int iface; } ;
struct TYPE_6__ {int bus_id; } ;
struct soc_camera_desc {TYPE_2__ host_desc; struct soc_camera_subdev_desc subdev_desc; } ;
struct TYPE_7__ {struct soc_camera_desc* platform_data; } ;
struct platform_device {TYPE_3__ dev; } ;


 int DEFAULT_HEIGHT ;
 int DEFAULT_WIDTH ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct soc_camera_device* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_regulator_bulk_get (TYPE_3__*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct soc_camera_device*) ;
 int soc_camera_device_register (struct soc_camera_device*) ;

__attribute__((used)) static int soc_camera_pdrv_probe(struct platform_device *pdev)
{
 struct soc_camera_desc *sdesc = pdev->dev.platform_data;
 struct soc_camera_subdev_desc *ssdd = &sdesc->subdev_desc;
 struct soc_camera_device *icd;
 int ret;

 if (!sdesc)
  return -EINVAL;

 icd = devm_kzalloc(&pdev->dev, sizeof(*icd), GFP_KERNEL);
 if (!icd)
  return -ENOMEM;
 ret = devm_regulator_bulk_get(&pdev->dev, ssdd->sd_pdata.num_regulators,
          ssdd->sd_pdata.regulators);
 if (ret < 0)
  return ret;

 icd->iface = sdesc->host_desc.bus_id;
 icd->sdesc = sdesc;
 icd->pdev = &pdev->dev;
 platform_set_drvdata(pdev, icd);

 icd->user_width = DEFAULT_WIDTH;
 icd->user_height = DEFAULT_HEIGHT;

 return soc_camera_device_register(icd);
}
