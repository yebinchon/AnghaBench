
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hswc_params {int dummy; } ;
struct TYPE_7__ {char* name; int max_brightness; char* default_trigger; int flags; int brightness_get; int brightness_set; } ;
struct asus_wireless_data {int wq; TYPE_3__ led; int led_work; struct hswc_params const* hswc_params; TYPE_2__* idev; struct acpi_device* adev; } ;
struct acpi_device_id {scalar_t__ driver_data; scalar_t__* id; } ;
struct acpi_device {int dev; struct asus_wireless_data* driver_data; } ;
struct TYPE_5__ {int vendor; int bustype; } ;
struct TYPE_6__ {char* name; char* phys; int keybit; int evbit; TYPE_1__ id; } ;


 int BUS_HOST ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int KEY_RFKILL ;
 int LED_CORE_SUSPENDRESUME ;
 int PCI_VENDOR_ID_ASUSTEK ;
 int acpi_device_hid (struct acpi_device*) ;
 int create_singlethread_workqueue (char*) ;
 int destroy_workqueue (int ) ;
 struct acpi_device_id* device_ids ;
 TYPE_2__* devm_input_allocate_device (int *) ;
 struct asus_wireless_data* devm_kzalloc (int *,int,int ) ;
 int devm_led_classdev_register (int *,TYPE_3__*) ;
 int input_register_device (TYPE_2__*) ;
 int led_state_get ;
 int led_state_set ;
 int led_state_update ;
 int set_bit (int ,int ) ;
 int strcmp (char*,int ) ;

__attribute__((used)) static int asus_wireless_add(struct acpi_device *adev)
{
 struct asus_wireless_data *data;
 const struct acpi_device_id *id;
 int err;

 data = devm_kzalloc(&adev->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;
 adev->driver_data = data;
 data->adev = adev;

 data->idev = devm_input_allocate_device(&adev->dev);
 if (!data->idev)
  return -ENOMEM;
 data->idev->name = "Asus Wireless Radio Control";
 data->idev->phys = "asus-wireless/input0";
 data->idev->id.bustype = BUS_HOST;
 data->idev->id.vendor = PCI_VENDOR_ID_ASUSTEK;
 set_bit(EV_KEY, data->idev->evbit);
 set_bit(KEY_RFKILL, data->idev->keybit);
 err = input_register_device(data->idev);
 if (err)
  return err;

 for (id = device_ids; id->id[0]; id++) {
  if (!strcmp((char *) id->id, acpi_device_hid(adev))) {
   data->hswc_params =
    (const struct hswc_params *)id->driver_data;
   break;
  }
 }
 if (!data->hswc_params)
  return 0;

 data->wq = create_singlethread_workqueue("asus_wireless_workqueue");
 if (!data->wq)
  return -ENOMEM;
 INIT_WORK(&data->led_work, led_state_update);
 data->led.name = "asus-wireless::airplane";
 data->led.brightness_set = led_state_set;
 data->led.brightness_get = led_state_get;
 data->led.flags = LED_CORE_SUSPENDRESUME;
 data->led.max_brightness = 1;
 data->led.default_trigger = "rfkill-none";
 err = devm_led_classdev_register(&adev->dev, &data->led);
 if (err)
  destroy_workqueue(data->wq);

 return err;
}
