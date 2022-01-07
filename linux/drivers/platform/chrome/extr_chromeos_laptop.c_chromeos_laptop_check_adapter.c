
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_peripheral {size_t type; int alt_addr; int board_info; scalar_t__ client; scalar_t__ pci_devid; } ;
struct TYPE_3__ {int parent; } ;
struct i2c_adapter {TYPE_1__ dev; int name; } ;
struct TYPE_4__ {int num_i2c_peripherals; struct i2c_peripheral* i2c_peripherals; } ;


 int chromeos_laptop_match_adapter_devid (int ,scalar_t__) ;
 scalar_t__ chromes_laptop_instantiate_i2c_device (struct i2c_adapter*,int *,int ) ;
 TYPE_2__* cros_laptop ;
 int * i2c_adapter_names ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static void chromeos_laptop_check_adapter(struct i2c_adapter *adapter)
{
 struct i2c_peripheral *i2c_dev;
 int i;

 for (i = 0; i < cros_laptop->num_i2c_peripherals; i++) {
  i2c_dev = &cros_laptop->i2c_peripherals[i];


  if (i2c_dev->client)
   continue;

  if (strncmp(adapter->name, i2c_adapter_names[i2c_dev->type],
       strlen(i2c_adapter_names[i2c_dev->type])))
   continue;

  if (i2c_dev->pci_devid &&
      !chromeos_laptop_match_adapter_devid(adapter->dev.parent,
        i2c_dev->pci_devid)) {
   continue;
  }

  i2c_dev->client =
   chromes_laptop_instantiate_i2c_device(adapter,
       &i2c_dev->board_info,
       i2c_dev->alt_addr);
 }
}
