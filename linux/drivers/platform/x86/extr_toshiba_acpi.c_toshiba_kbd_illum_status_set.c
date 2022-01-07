
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct toshiba_acpi_dev {int dummy; } ;


 int EIO ;
 int ENODEV ;
 int SCI_KBD_ILLUM_STATUS ;
 scalar_t__ TOS_FAILURE ;
 scalar_t__ TOS_NOT_SUPPORTED ;
 scalar_t__ TOS_SUCCESS ;
 int pr_err (char*) ;
 int sci_close (struct toshiba_acpi_dev*) ;
 int sci_open (struct toshiba_acpi_dev*) ;
 scalar_t__ sci_write (struct toshiba_acpi_dev*,int ,scalar_t__) ;

__attribute__((used)) static int toshiba_kbd_illum_status_set(struct toshiba_acpi_dev *dev, u32 time)
{
 u32 result;

 if (!sci_open(dev))
  return -EIO;

 result = sci_write(dev, SCI_KBD_ILLUM_STATUS, time);
 sci_close(dev);
 if (result == TOS_FAILURE)
  pr_err("ACPI call to set KBD backlight status failed\n");
 else if (result == TOS_NOT_SUPPORTED)
  return -ENODEV;

 return result == TOS_SUCCESS ? 0 : -EIO;
}
