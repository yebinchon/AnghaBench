
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcc_acpi {int sticky_mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef size_t ssize_t ;


 int SINF_STICKY_KEY ;
 struct pcc_acpi* acpi_driver_data (struct acpi_device*) ;
 int acpi_pcc_write_sset (struct pcc_acpi*,int ,int) ;
 int sscanf (char const*,char*,int*) ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static ssize_t set_sticky(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct acpi_device *acpi = to_acpi_device(dev);
 struct pcc_acpi *pcc = acpi_driver_data(acpi);
 int val;

 if (count && sscanf(buf, "%i", &val) == 1 &&
     (val == 0 || val == 1)) {
  acpi_pcc_write_sset(pcc, SINF_STICKY_KEY, val);
  pcc->sticky_mode = val;
 }

 return count;
}
