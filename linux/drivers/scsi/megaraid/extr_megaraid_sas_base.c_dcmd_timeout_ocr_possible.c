
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct megasas_instance {scalar_t__ adapter_type; int reset_flags; scalar_t__ unload; } ;


 int IGNORE_TIMEOUT ;
 int INITIATE_OCR ;
 int KILL_ADAPTER ;
 int MEGASAS_FUSION_IN_RESET ;
 scalar_t__ MFI_SERIES ;
 scalar_t__ test_bit (int ,int *) ;

inline int
dcmd_timeout_ocr_possible(struct megasas_instance *instance) {

 if (instance->adapter_type == MFI_SERIES)
  return KILL_ADAPTER;
 else if (instance->unload ||
   test_bit(MEGASAS_FUSION_IN_RESET, &instance->reset_flags))
  return IGNORE_TIMEOUT;
 else
  return INITIATE_OCR;
}
