
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_xhci_usb_data {scalar_t__ base; scalar_t__ enable_sw_switch; } ;
struct device {int dummy; } ;
typedef enum usb_role { ____Placeholder_usb_role } usb_role ;
typedef scalar_t__ acpi_status ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_WAIT_FOREVER ;
 scalar_t__ AE_NOT_CONFIGURED ;
 int DRD_CONFIG_DYNAMIC ;
 int DRD_CONFIG_MASK ;
 int DRD_CONFIG_STATIC_DEVICE ;
 int DRD_CONFIG_STATIC_HOST ;
 scalar_t__ DUAL_ROLE_CFG0 ;
 scalar_t__ DUAL_ROLE_CFG1 ;
 int DUAL_ROLE_CFG1_POLL_TIMEOUT ;
 int EIO ;
 int ETIMEDOUT ;
 int HOST_MODE ;
 int SW_IDPIN ;
 int SW_IDPIN_EN ;
 int SW_SWITCH_EN ;
 int SW_VBUS_VALID ;



 scalar_t__ acpi_acquire_global_lock (int ,int*) ;
 int acpi_release_global_lock (int) ;
 int dev_err (struct device*,char*) ;
 struct intel_xhci_usb_data* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;
 int readl (scalar_t__) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int intel_xhci_usb_set_role(struct device *dev, enum usb_role role)
{
 struct intel_xhci_usb_data *data = dev_get_drvdata(dev);
 unsigned long timeout;
 acpi_status status;
 u32 glk, val;
 u32 drd_config = DRD_CONFIG_DYNAMIC;






 status = acpi_acquire_global_lock(ACPI_WAIT_FOREVER, &glk);
 if (ACPI_FAILURE(status) && status != AE_NOT_CONFIGURED) {
  dev_err(dev, "Error could not acquire lock\n");
  return -EIO;
 }

 pm_runtime_get_sync(dev);







 val = readl(data->base + DUAL_ROLE_CFG0);
 switch (role) {
 case 128:
  val |= SW_IDPIN;
  val &= ~SW_VBUS_VALID;
  drd_config = DRD_CONFIG_DYNAMIC;
  break;
 case 129:
  val &= ~SW_IDPIN;
  val &= ~SW_VBUS_VALID;
  drd_config = DRD_CONFIG_STATIC_HOST;
  break;
 case 130:
  val |= SW_IDPIN;
  val |= SW_VBUS_VALID;
  drd_config = DRD_CONFIG_STATIC_DEVICE;
  break;
 }
 val |= SW_IDPIN_EN;
 if (data->enable_sw_switch) {
  val &= ~DRD_CONFIG_MASK;
  val |= SW_SWITCH_EN | drd_config;
 }
 writel(val, data->base + DUAL_ROLE_CFG0);

 acpi_release_global_lock(glk);


 timeout = jiffies + msecs_to_jiffies(DUAL_ROLE_CFG1_POLL_TIMEOUT);


 do {
  val = readl(data->base + DUAL_ROLE_CFG1);
  if (!!(val & HOST_MODE) == (role == 129)) {
   pm_runtime_put(dev);
   return 0;
  }


  usleep_range(5000, 10000);
 } while (time_before(jiffies, timeout));

 pm_runtime_put(dev);

 dev_warn(dev, "Timeout waiting for role-switch\n");
 return -ETIMEDOUT;
}
