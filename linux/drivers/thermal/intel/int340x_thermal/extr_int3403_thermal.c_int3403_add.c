
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct int3403_priv {unsigned long long type; TYPE_1__* adev; struct platform_device* pdev; } ;
typedef int acpi_status ;
struct TYPE_2__ {int handle; } ;


 TYPE_1__* ACPI_COMPANION (int *) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;



 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 struct int3403_priv* devm_kzalloc (int *,int,int ) ;
 int int3403_cdev_add (struct int3403_priv*) ;
 int int3403_sensor_add (struct int3403_priv*) ;
 int platform_set_drvdata (struct platform_device*,struct int3403_priv*) ;

__attribute__((used)) static int int3403_add(struct platform_device *pdev)
{
 struct int3403_priv *priv;
 int result = 0;
 unsigned long long tmp;
 acpi_status status;

 priv = devm_kzalloc(&pdev->dev, sizeof(struct int3403_priv),
       GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->pdev = pdev;
 priv->adev = ACPI_COMPANION(&(pdev->dev));
 if (!priv->adev) {
  result = -EINVAL;
  goto err;
 }


 status = acpi_evaluate_integer(priv->adev->handle, "_TMP",
           ((void*)0), &tmp);
 if (ACPI_FAILURE(status)) {
  status = acpi_evaluate_integer(priv->adev->handle, "PTYP",
           ((void*)0), &priv->type);
  if (ACPI_FAILURE(status)) {
   result = -EINVAL;
   goto err;
  }
 } else {
  priv->type = 128;
 }

 platform_set_drvdata(pdev, priv);
 switch (priv->type) {
 case 128:
  result = int3403_sensor_add(priv);
  break;
 case 129:
 case 130:
  result = int3403_cdev_add(priv);
  break;
 default:
  result = -EINVAL;
 }

 if (result)
  goto err;
 return result;

err:
 return result;
}
