
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_laptop {int handle; } ;


 int EINVAL ;
 int METHOD_KBD_LIGHT_SET ;
 int pr_warn (char*) ;
 scalar_t__ write_acpi_int (int ,int ,int) ;

__attribute__((used)) static int asus_kled_set(struct asus_laptop *asus, int kblv)
{
 if (kblv > 0)
  kblv = (1 << 7) | (kblv & 0x7F);
 else
  kblv = 0;

 if (write_acpi_int(asus->handle, METHOD_KBD_LIGHT_SET, kblv)) {
  pr_warn("Keyboard LED display write failed\n");
  return -EINVAL;
 }
 return 0;
}
