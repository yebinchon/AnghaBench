
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct acpi_peripheral {int properties; int hid; } ;
struct acpi_device_id {int id; } ;
struct TYPE_2__ {int num_acpi_peripherals; struct acpi_peripheral* acpi_peripherals; } ;


 int ACPI_ID_LEN ;
 scalar_t__ acpi_match_device (struct acpi_device_id*,int *) ;
 TYPE_1__* cros_laptop ;
 int dev_err (int *,char*,int) ;
 int device_add_properties (int *,int ) ;
 int has_acpi_companion (int *) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static bool chromeos_laptop_adjust_client(struct i2c_client *client)
{
 const struct acpi_peripheral *acpi_dev;
 struct acpi_device_id acpi_ids[2] = { };
 int i;
 int error;

 if (!has_acpi_companion(&client->dev))
  return 0;

 for (i = 0; i < cros_laptop->num_acpi_peripherals; i++) {
  acpi_dev = &cros_laptop->acpi_peripherals[i];

  memcpy(acpi_ids[0].id, acpi_dev->hid, ACPI_ID_LEN);

  if (acpi_match_device(acpi_ids, &client->dev)) {
   error = device_add_properties(&client->dev,
            acpi_dev->properties);
   if (error) {
    dev_err(&client->dev,
     "failed to add properties: %d\n",
     error);
    break;
   }

   return 1;
  }
 }

 return 0;
}
