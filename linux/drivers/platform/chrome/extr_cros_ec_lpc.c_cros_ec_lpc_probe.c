
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char u8 ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct ec_response_get_protocol_info {int dummy; } ;
struct ec_host_response {int dummy; } ;
struct ec_host_request {int dummy; } ;
struct cros_ec_device {int din_size; int dout_size; int irq; int cmd_readmem; int pkt_xfer; int cmd_xfer; int phys_name; struct device* dev; } ;
struct acpi_device {int handle; } ;
typedef int acpi_status ;
struct TYPE_2__ {int (* read ) (scalar_t__,int,char*) ;int write; } ;


 int ACPI_ALL_NOTIFY ;
 struct acpi_device* ACPI_COMPANION (struct device*) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int EBUSY ;
 scalar_t__ EC_HOST_CMD_REGION0 ;
 scalar_t__ EC_HOST_CMD_REGION1 ;
 int EC_HOST_CMD_REGION_SIZE ;
 scalar_t__ EC_LPC_ADDR_MEMMAP ;
 scalar_t__ EC_MEMMAP_ID ;
 int EC_MEMMAP_SIZE ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int acpi_install_notify_handler (int ,int ,int ,struct cros_ec_device*) ;
 int cros_ec_cmd_xfer_lpc ;
 int cros_ec_lpc_acpi_notify ;
 int cros_ec_lpc_mec_read_bytes (scalar_t__,int,char*) ;
 int cros_ec_lpc_mec_write_bytes ;
 TYPE_1__ cros_ec_lpc_ops ;
 int cros_ec_lpc_read_bytes (scalar_t__,int,char*) ;
 int cros_ec_lpc_readmem ;
 int cros_ec_lpc_write_bytes ;
 int cros_ec_pkt_xfer_lpc ;
 int cros_ec_register (struct cros_ec_device*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_name (struct device*) ;
 int dev_warn (struct device*,char*,int ) ;
 struct cros_ec_device* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_region (struct device*,scalar_t__,int ,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct cros_ec_device*) ;
 int stub1 (scalar_t__,int,char*) ;
 int stub2 (scalar_t__,int,char*) ;

__attribute__((used)) static int cros_ec_lpc_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct acpi_device *adev;
 acpi_status status;
 struct cros_ec_device *ec_dev;
 u8 buf[2];
 int irq, ret;

 if (!devm_request_region(dev, EC_LPC_ADDR_MEMMAP, EC_MEMMAP_SIZE,
     dev_name(dev))) {
  dev_err(dev, "couldn't reserve memmap region\n");
  return -EBUSY;
 }







 cros_ec_lpc_ops.read = cros_ec_lpc_mec_read_bytes;
 cros_ec_lpc_ops.write = cros_ec_lpc_mec_write_bytes;
 cros_ec_lpc_ops.read(EC_LPC_ADDR_MEMMAP + EC_MEMMAP_ID, 2, buf);
 if (buf[0] != 'E' || buf[1] != 'C') {

  cros_ec_lpc_ops.read = cros_ec_lpc_read_bytes;
  cros_ec_lpc_ops.write = cros_ec_lpc_write_bytes;
  cros_ec_lpc_ops.read(EC_LPC_ADDR_MEMMAP + EC_MEMMAP_ID, 2,
         buf);
  if (buf[0] != 'E' || buf[1] != 'C') {
   dev_err(dev, "EC ID not detected\n");
   return -ENODEV;
  }
 }

 if (!devm_request_region(dev, EC_HOST_CMD_REGION0,
     EC_HOST_CMD_REGION_SIZE, dev_name(dev))) {
  dev_err(dev, "couldn't reserve region0\n");
  return -EBUSY;
 }
 if (!devm_request_region(dev, EC_HOST_CMD_REGION1,
     EC_HOST_CMD_REGION_SIZE, dev_name(dev))) {
  dev_err(dev, "couldn't reserve region1\n");
  return -EBUSY;
 }

 ec_dev = devm_kzalloc(dev, sizeof(*ec_dev), GFP_KERNEL);
 if (!ec_dev)
  return -ENOMEM;

 platform_set_drvdata(pdev, ec_dev);
 ec_dev->dev = dev;
 ec_dev->phys_name = dev_name(dev);
 ec_dev->cmd_xfer = cros_ec_cmd_xfer_lpc;
 ec_dev->pkt_xfer = cros_ec_pkt_xfer_lpc;
 ec_dev->cmd_readmem = cros_ec_lpc_readmem;
 ec_dev->din_size = sizeof(struct ec_host_response) +
      sizeof(struct ec_response_get_protocol_info);
 ec_dev->dout_size = sizeof(struct ec_host_request);





 irq = platform_get_irq(pdev, 0);
 if (irq > 0)
  ec_dev->irq = irq;
 else if (irq != -ENXIO) {
  dev_err(dev, "couldn't retrieve IRQ number (%d)\n", irq);
  return irq;
 }

 ret = cros_ec_register(ec_dev);
 if (ret) {
  dev_err(dev, "couldn't register ec_dev (%d)\n", ret);
  return ret;
 }





 adev = ACPI_COMPANION(dev);
 if (adev) {
  status = acpi_install_notify_handler(adev->handle,
           ACPI_ALL_NOTIFY,
           cros_ec_lpc_acpi_notify,
           ec_dev);
  if (ACPI_FAILURE(status))
   dev_warn(dev, "Failed to register notifier %08x\n",
     status);
 }

 return 0;
}
