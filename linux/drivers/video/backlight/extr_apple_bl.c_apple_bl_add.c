
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct pci_dev {scalar_t__ vendor; } ;
struct backlight_properties {int max_brightness; int type; } ;
struct acpi_device {int dummy; } ;
struct TYPE_14__ {int (* get_brightness ) (TYPE_2__*) ;} ;
struct TYPE_17__ {TYPE_10__ backlight_ops; int iolen; int iostart; int (* set_brightness ) (int) ;} ;
struct TYPE_15__ {int brightness; } ;
struct TYPE_16__ {TYPE_1__ props; } ;


 int BACKLIGHT_PLATFORM ;
 int ENODEV ;
 int ENXIO ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 scalar_t__ PCI_VENDOR_ID_INTEL ;
 scalar_t__ PCI_VENDOR_ID_NVIDIA ;
 int PTR_ERR (TYPE_2__*) ;
 TYPE_2__* apple_backlight_device ;
 TYPE_2__* backlight_device_register (char*,int *,int *,TYPE_10__*,struct backlight_properties*) ;
 int backlight_update_status (TYPE_2__*) ;
 TYPE_5__* hw_data ;
 TYPE_5__ intel_chipset_data ;
 int memset (struct backlight_properties*,int ,int) ;
 TYPE_5__ nvidia_chipset_data ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_domain_bus_and_slot (int ,int ,int ) ;
 int pr_err (char*) ;
 int release_region (int ,int ) ;
 int request_region (int ,int ,char*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (int) ;
 int stub3 (TYPE_2__*) ;
 int stub4 (int) ;
 int stub5 (TYPE_2__*) ;

__attribute__((used)) static int apple_bl_add(struct acpi_device *dev)
{
 struct backlight_properties props;
 struct pci_dev *host;
 int intensity;

 host = pci_get_domain_bus_and_slot(0, 0, 0);

 if (!host) {
  pr_err("unable to find PCI host\n");
  return -ENODEV;
 }

 if (host->vendor == PCI_VENDOR_ID_INTEL)
  hw_data = &intel_chipset_data;
 else if (host->vendor == PCI_VENDOR_ID_NVIDIA)
  hw_data = &nvidia_chipset_data;

 pci_dev_put(host);

 if (!hw_data) {
  pr_err("unknown hardware\n");
  return -ENODEV;
 }



 intensity = hw_data->backlight_ops.get_brightness(((void*)0));

 if (!intensity) {
  hw_data->set_brightness(1);
  if (!hw_data->backlight_ops.get_brightness(((void*)0)))
   return -ENODEV;

  hw_data->set_brightness(0);
 }

 if (!request_region(hw_data->iostart, hw_data->iolen,
       "Apple backlight"))
  return -ENXIO;

 memset(&props, 0, sizeof(struct backlight_properties));
 props.type = BACKLIGHT_PLATFORM;
 props.max_brightness = 15;
 apple_backlight_device = backlight_device_register("apple_backlight",
      ((void*)0), ((void*)0), &hw_data->backlight_ops, &props);

 if (IS_ERR(apple_backlight_device)) {
  release_region(hw_data->iostart, hw_data->iolen);
  return PTR_ERR(apple_backlight_device);
 }

 apple_backlight_device->props.brightness =
  hw_data->backlight_ops.get_brightness(apple_backlight_device);
 backlight_update_status(apple_backlight_device);

 return 0;
}
