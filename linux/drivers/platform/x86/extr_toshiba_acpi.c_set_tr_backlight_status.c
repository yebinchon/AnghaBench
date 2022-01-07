
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct toshiba_acpi_dev {int dummy; } ;


 int EIO ;
 int ENODEV ;
 int HCI_TR_BACKLIGHT ;
 scalar_t__ TOS_FAILURE ;
 scalar_t__ TOS_NOT_SUPPORTED ;
 scalar_t__ TOS_SUCCESS ;
 scalar_t__ hci_write (struct toshiba_acpi_dev*,int ,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int set_tr_backlight_status(struct toshiba_acpi_dev *dev, u32 status)
{
 u32 result = hci_write(dev, HCI_TR_BACKLIGHT, !status);

 if (result == TOS_FAILURE)
  pr_err("ACPI call to set Transflective Backlight failed\n");
 else if (result == TOS_NOT_SUPPORTED)
  return -ENODEV;

 return result == TOS_SUCCESS ? 0 : -EIO;
}
