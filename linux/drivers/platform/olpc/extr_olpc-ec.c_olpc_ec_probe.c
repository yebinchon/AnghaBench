
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_config {struct olpc_ec_priv* driver_data; int dev; } ;
struct TYPE_3__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct olpc_ec_priv {int dcon_enabled; int dbgfs_dir; int dcon_rdev; int version; int cmd_q_lock; int cmd_q; int cmd_lock; int worker; scalar_t__ drv; } ;


 int EC_FIRMWARE_REV ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dcon_desc ;
 int dev_err (TYPE_1__*,char*) ;
 int devm_regulator_register (TYPE_1__*,int *,struct regulator_config*) ;
 scalar_t__ ec_driver ;
 struct olpc_ec_priv* ec_priv ;
 int kfree (struct olpc_ec_priv*) ;
 struct olpc_ec_priv* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int olpc_ec_cmd (int ,int *,int ,int *,int) ;
 int olpc_ec_setup_debugfs () ;
 int olpc_ec_worker ;
 int platform_set_drvdata (struct platform_device*,struct olpc_ec_priv*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int olpc_ec_probe(struct platform_device *pdev)
{
 struct olpc_ec_priv *ec;
 struct regulator_config config = { };
 int err;

 if (!ec_driver)
  return -ENODEV;

 ec = kzalloc(sizeof(*ec), GFP_KERNEL);
 if (!ec)
  return -ENOMEM;

 ec->drv = ec_driver;
 INIT_WORK(&ec->worker, olpc_ec_worker);
 mutex_init(&ec->cmd_lock);

 INIT_LIST_HEAD(&ec->cmd_q);
 spin_lock_init(&ec->cmd_q_lock);

 ec_priv = ec;
 platform_set_drvdata(pdev, ec);


 err = olpc_ec_cmd(EC_FIRMWARE_REV, ((void*)0), 0, &ec->version, 1);
 if (err) {
  ec_priv = ((void*)0);
  kfree(ec);
  return err;
 }

 config.dev = pdev->dev.parent;
 config.driver_data = ec;
 ec->dcon_enabled = 1;
 ec->dcon_rdev = devm_regulator_register(&pdev->dev, &dcon_desc,
        &config);
 if (IS_ERR(ec->dcon_rdev)) {
  dev_err(&pdev->dev, "failed to register DCON regulator\n");
  return PTR_ERR(ec->dcon_rdev);
 }

 ec->dbgfs_dir = olpc_ec_setup_debugfs();

 return err;
}
