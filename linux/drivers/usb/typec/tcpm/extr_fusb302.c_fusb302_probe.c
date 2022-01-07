
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; scalar_t__ irq; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_3__ {int fwnode; } ;
struct fusb302_chip {int wq; TYPE_1__ tcpc_dev; int tcpm_port; scalar_t__ gpio_int_n_irq; int bc_lvl_handler; int irq_work; int irq_lock; struct device* dev; int vbus; int extcon; int lock; struct i2c_client* i2c_client; } ;


 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_I2C_BLOCK ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int create_singlethread_workqueue (int ) ;
 int destroy_workqueue (int ) ;
 int dev_err (struct device*,char*,...) ;
 int dev_name (struct device*) ;
 scalar_t__ device_property_read_string (struct device*,char*,char const**) ;
 struct fusb302_chip* devm_kzalloc (struct device*,int,int ) ;
 int devm_regulator_get (struct device*,char*) ;
 int enable_irq_wake (scalar_t__) ;
 int extcon_get_extcon_dev (char const*) ;
 int fusb302_bc_lvl_handler_work ;
 int fusb302_debugfs_exit (struct fusb302_chip*) ;
 int fusb302_debugfs_init (struct fusb302_chip*) ;
 int fusb302_fwnode_get (struct device*) ;
 int fusb302_irq_intn ;
 int fusb302_irq_work ;
 int fwnode_handle_put (int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct fusb302_chip*) ;
 int init_gpio (struct fusb302_chip*) ;
 int init_tcpc_dev (TYPE_1__*) ;
 int mutex_init (int *) ;
 int request_irq (scalar_t__,int ,int,char*,struct fusb302_chip*) ;
 int spin_lock_init (int *) ;
 int tcpm_register_port (struct device*,TYPE_1__*) ;
 int tcpm_unregister_port (int ) ;

__attribute__((used)) static int fusb302_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct fusb302_chip *chip;
 struct i2c_adapter *adapter = client->adapter;
 struct device *dev = &client->dev;
 const char *name;
 int ret = 0;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_I2C_BLOCK)) {
  dev_err(&client->dev,
   "I2C/SMBus block functionality not supported!\n");
  return -ENODEV;
 }
 chip = devm_kzalloc(&client->dev, sizeof(*chip), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 chip->i2c_client = client;
 chip->dev = &client->dev;
 mutex_init(&chip->lock);
 if (device_property_read_string(dev, "linux,extcon-name", &name) == 0) {
  chip->extcon = extcon_get_extcon_dev(name);
  if (!chip->extcon)
   return -EPROBE_DEFER;
 }

 chip->vbus = devm_regulator_get(chip->dev, "vbus");
 if (IS_ERR(chip->vbus))
  return PTR_ERR(chip->vbus);

 chip->wq = create_singlethread_workqueue(dev_name(chip->dev));
 if (!chip->wq)
  return -ENOMEM;

 spin_lock_init(&chip->irq_lock);
 INIT_WORK(&chip->irq_work, fusb302_irq_work);
 INIT_DELAYED_WORK(&chip->bc_lvl_handler, fusb302_bc_lvl_handler_work);
 init_tcpc_dev(&chip->tcpc_dev);
 fusb302_debugfs_init(chip);

 if (client->irq) {
  chip->gpio_int_n_irq = client->irq;
 } else {
  ret = init_gpio(chip);
  if (ret < 0)
   goto destroy_workqueue;
 }

 chip->tcpc_dev.fwnode = fusb302_fwnode_get(dev);
 if (IS_ERR(chip->tcpc_dev.fwnode)) {
  ret = PTR_ERR(chip->tcpc_dev.fwnode);
  goto destroy_workqueue;
 }

 chip->tcpm_port = tcpm_register_port(&client->dev, &chip->tcpc_dev);
 if (IS_ERR(chip->tcpm_port)) {
  fwnode_handle_put(chip->tcpc_dev.fwnode);
  ret = PTR_ERR(chip->tcpm_port);
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "cannot register tcpm port, ret=%d", ret);
  goto destroy_workqueue;
 }

 ret = request_irq(chip->gpio_int_n_irq, fusb302_irq_intn,
     IRQF_ONESHOT | IRQF_TRIGGER_LOW,
     "fsc_interrupt_int_n", chip);
 if (ret < 0) {
  dev_err(dev, "cannot request IRQ for GPIO Int_N, ret=%d", ret);
  goto tcpm_unregister_port;
 }
 enable_irq_wake(chip->gpio_int_n_irq);
 i2c_set_clientdata(client, chip);

 return ret;

tcpm_unregister_port:
 tcpm_unregister_port(chip->tcpm_port);
 fwnode_handle_put(chip->tcpc_dev.fwnode);
destroy_workqueue:
 fusb302_debugfs_exit(chip);
 destroy_workqueue(chip->wq);

 return ret;
}
