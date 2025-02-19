
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* driver; } ;
struct platform_device {struct device dev; } ;
struct i2c_multi_inst_data {int num_clients; int * clients; } ;
struct i2c_inst_data {char* type; int flags; int irq_idx; } ;
struct i2c_board_info {char* dev_name; int irq; int type; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;
struct acpi_device {int dummy; } ;
typedef int name ;
typedef int board_info ;
struct TYPE_2__ {int acpi_match_table; } ;


 struct acpi_device* ACPI_COMPANION (struct device*) ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int I2C_NAME_SIZE ;


 int IRQ_RESOURCE_TYPE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int acpi_dev_gpio_irq_get (struct acpi_device*,int ) ;
 struct acpi_device_id* acpi_match_device (int ,struct device*) ;
 int clients ;
 int dev_dbg (struct device*,char*,int ,int) ;
 int dev_err (struct device*,char*,...) ;
 char* dev_name (struct device*) ;
 struct i2c_multi_inst_data* devm_kmalloc (struct device*,int ,int ) ;
 int i2c_acpi_new_device (struct device*,int,struct i2c_board_info*) ;
 int i2c_multi_inst_count_resources (struct acpi_device*) ;
 int i2c_unregister_device (int ) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct i2c_multi_inst_data*) ;
 int snprintf (char*,int,char*,char*,char*,int) ;
 int strlcpy (int ,char*,int ) ;
 int struct_size (struct i2c_multi_inst_data*,int ,int) ;

__attribute__((used)) static int i2c_multi_inst_probe(struct platform_device *pdev)
{
 struct i2c_multi_inst_data *multi;
 const struct acpi_device_id *match;
 const struct i2c_inst_data *inst_data;
 struct i2c_board_info board_info = {};
 struct device *dev = &pdev->dev;
 struct acpi_device *adev;
 char name[32];
 int i, ret;

 match = acpi_match_device(dev->driver->acpi_match_table, dev);
 if (!match) {
  dev_err(dev, "Error ACPI match data is missing\n");
  return -ENODEV;
 }
 inst_data = (const struct i2c_inst_data *)match->driver_data;

 adev = ACPI_COMPANION(dev);


 ret = i2c_multi_inst_count_resources(adev);
 if (ret < 0)
  return ret;

 multi = devm_kmalloc(dev, struct_size(multi, clients, ret), GFP_KERNEL);
 if (!multi)
  return -ENOMEM;

 multi->num_clients = ret;

 for (i = 0; i < multi->num_clients && inst_data[i].type; i++) {
  memset(&board_info, 0, sizeof(board_info));
  strlcpy(board_info.type, inst_data[i].type, I2C_NAME_SIZE);
  snprintf(name, sizeof(name), "%s-%s.%d", dev_name(dev),
    inst_data[i].type, i);
  board_info.dev_name = name;
  switch (inst_data[i].flags & IRQ_RESOURCE_TYPE) {
  case 128:
   ret = acpi_dev_gpio_irq_get(adev, inst_data[i].irq_idx);
   if (ret < 0) {
    dev_err(dev, "Error requesting irq at index %d: %d\n",
     inst_data[i].irq_idx, ret);
    goto error;
   }
   board_info.irq = ret;
   break;
  case 129:
   ret = platform_get_irq(pdev, inst_data[i].irq_idx);
   if (ret < 0) {
    dev_dbg(dev, "Error requesting irq at index %d: %d\n",
     inst_data[i].irq_idx, ret);
    goto error;
   }
   board_info.irq = ret;
   break;
  default:
   board_info.irq = 0;
   break;
  }
  multi->clients[i] = i2c_acpi_new_device(dev, i, &board_info);
  if (IS_ERR(multi->clients[i])) {
   ret = PTR_ERR(multi->clients[i]);
   if (ret != -EPROBE_DEFER)
    dev_err(dev, "Error creating i2c-client, idx %d\n", i);
   goto error;
  }
 }
 if (i < multi->num_clients) {
  dev_err(dev, "Error finding driver, idx %d\n", i);
  ret = -ENODEV;
  goto error;
 }

 platform_set_drvdata(pdev, multi);
 return 0;

error:
 while (--i >= 0)
  i2c_unregister_device(multi->clients[i]);

 return ret;
}
