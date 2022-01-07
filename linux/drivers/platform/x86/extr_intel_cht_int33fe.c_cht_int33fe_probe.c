
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct i2c_board_info {char* dev_name; int irq; int type; struct fwnode_handle* fwnode; } ;
struct fwnode_handle {int dummy; } ;
struct cht_int33fe_data {struct regulator* max17047; struct regulator* fusb302; struct regulator* pi3usb30532; } ;
typedef int board_info ;
typedef int acpi_status ;


 int ACPI_COMPANION (struct device*) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (struct device*) ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 unsigned long long EXPECTED_PTYPE ;
 int GFP_KERNEL ;
 int I2C_NAME_SIZE ;
 size_t INT33FE_NODE_FUSB302 ;
 size_t INT33FE_NODE_PI3USB30532 ;
 scalar_t__ IS_ERR (struct regulator*) ;
 int PTR_ERR (struct regulator*) ;
 int acpi_dev_gpio_irq_get (int ,int) ;
 int acpi_dev_present (char*,char*,int) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int cht_int33fe_add_nodes (struct cht_int33fe_data*) ;
 int cht_int33fe_register_max17047 (struct device*,struct cht_int33fe_data*) ;
 int cht_int33fe_remove_nodes (struct cht_int33fe_data*) ;
 int dev_err (struct device*,char*,...) ;
 struct cht_int33fe_data* devm_kzalloc (struct device*,int,int ) ;
 void* i2c_acpi_new_device (struct device*,int,struct i2c_board_info*) ;
 int i2c_unregister_device (struct regulator*) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int * nodes ;
 int platform_set_drvdata (struct platform_device*,struct cht_int33fe_data*) ;
 struct regulator* regulator_get_optional (struct device*,char*) ;
 int regulator_put (struct regulator*) ;
 struct fwnode_handle* software_node_fwnode (int *) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int cht_int33fe_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct i2c_board_info board_info;
 struct cht_int33fe_data *data;
 struct fwnode_handle *fwnode;
 struct regulator *regulator;
 unsigned long long ptyp;
 acpi_status status;
 int fusb302_irq;
 int ret;

 status = acpi_evaluate_integer(ACPI_HANDLE(dev), "PTYP", ((void*)0), &ptyp);
 if (ACPI_FAILURE(status)) {
  dev_err(dev, "Error getting PTYPE\n");
  return -ENODEV;
 }





 if (ptyp != EXPECTED_PTYPE)
  return -ENODEV;


 if (!acpi_dev_present("INT34D3", "1", 3)) {
  dev_err(dev, "Error PTYPE == %d, but no INT34D3 device\n",
   EXPECTED_PTYPE);
  return -ENODEV;
 }
 regulator = regulator_get_optional(dev, "cht_wc_usb_typec_vbus");
 if (IS_ERR(regulator)) {
  ret = PTR_ERR(regulator);
  return (ret == -ENODEV) ? -EPROBE_DEFER : ret;
 }
 regulator_put(regulator);


 fusb302_irq = acpi_dev_gpio_irq_get(ACPI_COMPANION(dev), 1);
 if (fusb302_irq < 0) {
  if (fusb302_irq != -EPROBE_DEFER)
   dev_err(dev, "Error getting FUSB302 irq\n");
  return fusb302_irq;
 }

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 ret = cht_int33fe_add_nodes(data);
 if (ret)
  return ret;


 ret = cht_int33fe_register_max17047(dev, data);
 if (ret)
  goto out_remove_nodes;

 fwnode = software_node_fwnode(&nodes[INT33FE_NODE_FUSB302]);
 if (!fwnode) {
  ret = -ENODEV;
  goto out_unregister_max17047;
 }

 memset(&board_info, 0, sizeof(board_info));
 strlcpy(board_info.type, "typec_fusb302", I2C_NAME_SIZE);
 board_info.dev_name = "fusb302";
 board_info.fwnode = fwnode;
 board_info.irq = fusb302_irq;

 data->fusb302 = i2c_acpi_new_device(dev, 2, &board_info);
 if (IS_ERR(data->fusb302)) {
  ret = PTR_ERR(data->fusb302);
  goto out_unregister_max17047;
 }

 fwnode = software_node_fwnode(&nodes[INT33FE_NODE_PI3USB30532]);
 if (!fwnode) {
  ret = -ENODEV;
  goto out_unregister_fusb302;
 }

 memset(&board_info, 0, sizeof(board_info));
 board_info.dev_name = "pi3usb30532";
 board_info.fwnode = fwnode;
 strlcpy(board_info.type, "pi3usb30532", I2C_NAME_SIZE);

 data->pi3usb30532 = i2c_acpi_new_device(dev, 3, &board_info);
 if (IS_ERR(data->pi3usb30532)) {
  ret = PTR_ERR(data->pi3usb30532);
  goto out_unregister_fusb302;
 }

 platform_set_drvdata(pdev, data);

 return 0;

out_unregister_fusb302:
 i2c_unregister_device(data->fusb302);

out_unregister_max17047:
 i2c_unregister_device(data->max17047);

out_remove_nodes:
 cht_int33fe_remove_nodes(data);

 return ret;
}
