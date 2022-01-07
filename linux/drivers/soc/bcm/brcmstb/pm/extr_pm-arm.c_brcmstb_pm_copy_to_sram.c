
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int boot_sram_len; int boot_sram; } ;


 unsigned int ALIGN (size_t,int ) ;
 int FNCPY_ALIGN ;
 TYPE_1__ ctrl ;
 void* fncpy (int ,void*,unsigned int) ;
 int pr_err (char*) ;

__attribute__((used)) static void *brcmstb_pm_copy_to_sram(void *fn, size_t len)
{
 unsigned int size = ALIGN(len, FNCPY_ALIGN);

 if (ctrl.boot_sram_len < size) {
  pr_err("standby code will not fit in SRAM\n");
  return ((void*)0);
 }

 return fncpy(ctrl.boot_sram, fn, size);
}
