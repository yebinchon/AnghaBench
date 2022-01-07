
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mlxreg_io_priv_data {int hwmon; int groups; struct platform_device* pdev; int pdata; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 int dev_get_platdata (int *) ;
 int dev_set_drvdata (int *,struct mlxreg_io_priv_data*) ;
 int devm_hwmon_device_register_with_groups (int *,char*,struct mlxreg_io_priv_data*,int ) ;
 struct mlxreg_io_priv_data* devm_kzalloc (int *,int,int ) ;
 int mlxreg_io_attr_init (struct mlxreg_io_priv_data*) ;

__attribute__((used)) static int mlxreg_io_probe(struct platform_device *pdev)
{
 struct mlxreg_io_priv_data *priv;
 int err;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->pdata = dev_get_platdata(&pdev->dev);
 if (!priv->pdata) {
  dev_err(&pdev->dev, "Failed to get platform data.\n");
  return -EINVAL;
 }

 priv->pdev = pdev;

 err = mlxreg_io_attr_init(priv);
 if (err) {
  dev_err(&priv->pdev->dev, "Failed to allocate attributes: %d\n",
   err);
  return err;
 }

 priv->hwmon = devm_hwmon_device_register_with_groups(&pdev->dev,
            "mlxreg_io",
             priv,
             priv->groups);
 if (IS_ERR(priv->hwmon)) {
  dev_err(&pdev->dev, "Failed to register hwmon device %ld\n",
   PTR_ERR(priv->hwmon));
  return PTR_ERR(priv->hwmon);
 }

 dev_set_drvdata(&pdev->dev, priv);

 return 0;
}
