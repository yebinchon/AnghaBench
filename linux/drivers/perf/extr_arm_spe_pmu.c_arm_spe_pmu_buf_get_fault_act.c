
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_output_handle {int dummy; } ;
typedef enum arm_spe_pmu_buf_fault_action { ____Placeholder_arm_spe_pmu_buf_fault_action } arm_spe_pmu_buf_fault_action ;


 int BIT (int ) ;
 int PERF_AUX_FLAG_COLLISION ;
 int PERF_AUX_FLAG_PARTIAL ;
 int PERF_AUX_FLAG_TRUNCATED ;
 int SPE_PMU_BUF_FAULT_ACT_FATAL ;
 int SPE_PMU_BUF_FAULT_ACT_OK ;
 int SPE_PMU_BUF_FAULT_ACT_SPURIOUS ;
 int SYS_PMBLIMITR_EL1 ;
 int SYS_PMBPTR_EL1 ;
 int SYS_PMBSR_EL1 ;

 int SYS_PMBSR_EL1_BUF_BSC_MASK ;
 int SYS_PMBSR_EL1_BUF_BSC_SHIFT ;
 int SYS_PMBSR_EL1_COLL_SHIFT ;
 int SYS_PMBSR_EL1_DL_SHIFT ;



 int SYS_PMBSR_EL1_EC_MASK ;
 int SYS_PMBSR_EL1_EC_SHIFT ;
 int SYS_PMBSR_EL1_S_SHIFT ;
 int arm_spe_perf_aux_output_end (struct perf_output_handle*) ;
 int dsb (int ) ;
 int isb () ;
 int nsh ;
 int perf_aux_output_flag (struct perf_output_handle*,int) ;
 int pr_err_ratelimited (char*,char const*,int ,int,int,int) ;
 int psb_csync () ;
 int read_sysreg_s (int ) ;
 int smp_processor_id () ;

__attribute__((used)) static enum arm_spe_pmu_buf_fault_action
arm_spe_pmu_buf_get_fault_act(struct perf_output_handle *handle)
{
 const char *err_str;
 u64 pmbsr;
 enum arm_spe_pmu_buf_fault_action ret;





 psb_csync();
 dsb(nsh);


 isb();


 pmbsr = read_sysreg_s(SYS_PMBSR_EL1);
 if (!(pmbsr & BIT(SYS_PMBSR_EL1_S_SHIFT)))
  return SPE_PMU_BUF_FAULT_ACT_SPURIOUS;





 if (pmbsr & BIT(SYS_PMBSR_EL1_DL_SHIFT))
  perf_aux_output_flag(handle, PERF_AUX_FLAG_TRUNCATED |
          PERF_AUX_FLAG_PARTIAL);


 if (pmbsr & BIT(SYS_PMBSR_EL1_COLL_SHIFT))
  perf_aux_output_flag(handle, PERF_AUX_FLAG_COLLISION);


 switch (pmbsr & (SYS_PMBSR_EL1_EC_MASK << SYS_PMBSR_EL1_EC_SHIFT)) {
 case 130:

  break;
 case 129:
 case 128:
  err_str = "Unexpected buffer fault";
  goto out_err;
 default:
  err_str = "Unknown error code";
  goto out_err;
 }


 switch (pmbsr &
  (SYS_PMBSR_EL1_BUF_BSC_MASK << SYS_PMBSR_EL1_BUF_BSC_SHIFT)) {
 case 131:
  ret = SPE_PMU_BUF_FAULT_ACT_OK;
  goto out_stop;
 default:
  err_str = "Unknown buffer status code";
 }

out_err:
 pr_err_ratelimited("%s on CPU %d [PMBSR=0x%016llx, PMBPTR=0x%016llx, PMBLIMITR=0x%016llx]\n",
      err_str, smp_processor_id(), pmbsr,
      read_sysreg_s(SYS_PMBPTR_EL1),
      read_sysreg_s(SYS_PMBLIMITR_EL1));
 ret = SPE_PMU_BUF_FAULT_ACT_FATAL;

out_stop:
 arm_spe_perf_aux_output_end(handle);
 return ret;
}
