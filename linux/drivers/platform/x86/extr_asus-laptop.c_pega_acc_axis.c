
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_laptop {int handle; } ;


 int PEGA_ACC_CLAMP ;
 int PEGA_ACC_RETRIES ;
 int abs (int) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int clamp_val (short,int ,int ) ;

__attribute__((used)) static int pega_acc_axis(struct asus_laptop *asus, int curr, char *method)
{
 int i, delta;
 unsigned long long val;
 for (i = 0; i < PEGA_ACC_RETRIES; i++) {
  acpi_evaluate_integer(asus->handle, method, ((void*)0), &val);







  delta = abs(curr - (short)val);
  if (delta < 128 && !(val & ~0xffff))
   break;
 }
 return clamp_val((short)val, -PEGA_ACC_CLAMP, PEGA_ACC_CLAMP);
}
