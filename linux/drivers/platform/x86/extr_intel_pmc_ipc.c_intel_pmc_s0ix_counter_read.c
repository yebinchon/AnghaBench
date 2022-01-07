
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int has_gcr_regs; } ;


 int EACCES ;
 int PMC_GCR_TELEM_DEEP_S0IX_REG ;
 int PMC_GCR_TELEM_SHLW_S0IX_REG ;
 int S0IX_RESIDENCY_IN_USECS (int ,int ) ;
 int gcr_data_readq (int ) ;
 TYPE_1__ ipcdev ;

int intel_pmc_s0ix_counter_read(u64 *data)
{
 u64 deep, shlw;

 if (!ipcdev.has_gcr_regs)
  return -EACCES;

 deep = gcr_data_readq(PMC_GCR_TELEM_DEEP_S0IX_REG);
 shlw = gcr_data_readq(PMC_GCR_TELEM_SHLW_S0IX_REG);

 *data = S0IX_RESIDENCY_IN_USECS(deep, shlw);

 return 0;
}
