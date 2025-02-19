
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct toshiba_acpi_dev {int dummy; } ;


 int EIO ;
 int ENODEV ;
 int HCI_COOLING_METHOD ;
 scalar_t__ TOS_FAILURE ;
 scalar_t__ TOS_NOT_SUPPORTED ;
 scalar_t__ TOS_SUCCESS ;
 scalar_t__ TOS_SUCCESS2 ;
 scalar_t__ hci_write (struct toshiba_acpi_dev*,int ,scalar_t__) ;
 int pr_err (char*) ;

__attribute__((used)) static int toshiba_cooling_method_set(struct toshiba_acpi_dev *dev, u32 state)
{
 u32 result = hci_write(dev, HCI_COOLING_METHOD, state);

 if (result == TOS_FAILURE)
  pr_err("ACPI call to set Cooling Method failed\n");

 if (result == TOS_NOT_SUPPORTED)
  return -ENODEV;

 return (result == TOS_SUCCESS || result == TOS_SUCCESS2) ? 0 : -EIO;
}
