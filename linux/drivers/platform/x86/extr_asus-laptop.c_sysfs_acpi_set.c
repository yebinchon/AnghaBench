
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_laptop {int handle; } ;
typedef int ssize_t ;


 int ENODEV ;
 int kstrtoint (char const*,int ,int*) ;
 scalar_t__ write_acpi_int (int ,char const*,int) ;

__attribute__((used)) static ssize_t sysfs_acpi_set(struct asus_laptop *asus,
         const char *buf, size_t count,
         const char *method)
{
 int rv, value;

 rv = kstrtoint(buf, 0, &value);
 if (rv < 0)
  return rv;

 if (write_acpi_int(asus->handle, method, value))
  return -ENODEV;
 return count;
}
