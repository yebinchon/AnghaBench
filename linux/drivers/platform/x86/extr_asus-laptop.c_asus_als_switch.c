
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_laptop {int light_switch; int handle; scalar_t__ is_pega_lucid; } ;


 int METHOD_ALS_CONTROL ;
 int PEGA_ALS ;
 int PEGA_ALS_POWER ;
 int asus_pega_lucid_set (struct asus_laptop*,int ,int) ;
 int pr_warning (char*) ;
 int write_acpi_int (int ,int ,int) ;

__attribute__((used)) static void asus_als_switch(struct asus_laptop *asus, int value)
{
 int ret;

 if (asus->is_pega_lucid) {
  ret = asus_pega_lucid_set(asus, PEGA_ALS, value);
  if (!ret)
   ret = asus_pega_lucid_set(asus, PEGA_ALS_POWER, value);
 } else {
  ret = write_acpi_int(asus->handle, METHOD_ALS_CONTROL, value);
 }
 if (ret)
  pr_warning("Error setting light sensor switch\n");

 asus->light_switch = value;
}
