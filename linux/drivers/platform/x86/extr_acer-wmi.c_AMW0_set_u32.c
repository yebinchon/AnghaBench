
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wmab_args {int ebx; scalar_t__ edx; scalar_t__ ecx; int eax; } ;
typedef int acpi_status ;
struct TYPE_2__ {int brightness; } ;


 int ACER_AMW0_BLUETOOTH_MASK ;
 int ACER_AMW0_MAILLED_MASK ;
 int ACER_AMW0_WIRELESS_MASK ;
 int ACER_AMW0_WRITE ;




 int AE_BAD_PARAMETER ;
 int AE_ERROR ;
 int ec_write (int,int) ;
 int max_brightness ;
 TYPE_1__* quirks ;
 int wmab_execute (struct wmab_args*,int *) ;

__attribute__((used)) static acpi_status AMW0_set_u32(u32 value, u32 cap)
{
 struct wmab_args args;

 args.eax = ACER_AMW0_WRITE;
 args.ebx = value ? (1<<8) : 0;
 args.ecx = args.edx = 0;

 switch (cap) {
 case 129:
  if (value > 1)
   return AE_BAD_PARAMETER;
  args.ebx |= ACER_AMW0_MAILLED_MASK;
  break;
 case 128:
  if (value > 1)
   return AE_BAD_PARAMETER;
  args.ebx |= ACER_AMW0_WIRELESS_MASK;
  break;
 case 131:
  if (value > 1)
   return AE_BAD_PARAMETER;
  args.ebx |= ACER_AMW0_BLUETOOTH_MASK;
  break;
 case 130:
  if (value > max_brightness)
   return AE_BAD_PARAMETER;
  switch (quirks->brightness) {
  default:
   return ec_write(0x83, value);
   break;
  }
 default:
  return AE_ERROR;
 }


 return wmab_execute(&args, ((void*)0));
}
