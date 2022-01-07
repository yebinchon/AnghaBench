
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;
struct TYPE_2__ {int properties; int acpi_name; } ;


 int I2C_NAME_SIZE ;
 int dev_err (struct device*,char*,int) ;
 int device_add_properties (struct device*,int ) ;
 scalar_t__ has_acpi_companion (struct device*) ;
 int strncmp (int ,int ,int ) ;
 TYPE_1__* ts_data ;

__attribute__((used)) static void ts_dmi_add_props(struct i2c_client *client)
{
 struct device *dev = &client->dev;
 int error;

 if (has_acpi_companion(dev) &&
     !strncmp(ts_data->acpi_name, client->name, I2C_NAME_SIZE)) {
  error = device_add_properties(dev, ts_data->properties);
  if (error)
   dev_err(dev, "failed to add properties: %d\n", error);
 }
}
