
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int intel_pmc_s0ix_counter_read (int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int telem_s0ix_res_get(void *data, u64 *val)
{
 u64 s0ix_total_res;
 int ret;

 ret = intel_pmc_s0ix_counter_read(&s0ix_total_res);
 if (ret) {
  pr_err("Failed to read S0ix residency");
  return ret;
 }

 *val = s0ix_total_res;

 return 0;
}
