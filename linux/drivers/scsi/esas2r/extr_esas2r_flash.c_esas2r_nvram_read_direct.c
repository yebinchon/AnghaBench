
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_sas_nvram {int dummy; } ;
struct esas2r_adapter {int nvram_semaphore; int nvram; } ;


 int FLS_OFFSET_NVR ;
 scalar_t__ down_interruptible (int *) ;
 int esas2r_hdebug (char*) ;
 int esas2r_nvram_validate (struct esas2r_adapter*) ;
 int esas2r_read_flash_block (struct esas2r_adapter*,int ,int ,int) ;
 int up (int *) ;

bool esas2r_nvram_read_direct(struct esas2r_adapter *a)
{
 bool result;

 if (down_interruptible(&a->nvram_semaphore))
  return 0;

 if (!esas2r_read_flash_block(a, a->nvram, FLS_OFFSET_NVR,
         sizeof(struct esas2r_sas_nvram))) {
  esas2r_hdebug("NVRAM read failed, using defaults");
  return 0;
 }

 result = esas2r_nvram_validate(a);

 up(&a->nvram_semaphore);

 return result;
}
