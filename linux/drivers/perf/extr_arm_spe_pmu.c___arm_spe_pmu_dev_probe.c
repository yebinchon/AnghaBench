
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct device {int dummy; } ;
struct arm_spe_pmu {int align; int min_period; int max_record_sz; int counter_sz; int features; int supported_cpus; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int BIT (int ) ;
 int ID_AA64DFR0_EL1 ;
 int ID_AA64DFR0_PMSVER_SHIFT ;
 int SPE_PMU_FEAT_ARCH_INST ;
 int SPE_PMU_FEAT_DEV_PROBED ;
 int SPE_PMU_FEAT_ERND ;
 int SPE_PMU_FEAT_FILT_EVT ;
 int SPE_PMU_FEAT_FILT_LAT ;
 int SPE_PMU_FEAT_FILT_TYP ;
 int SPE_PMU_FEAT_LDS ;
 int SYS_PMBIDR_EL1 ;
 int SYS_PMBIDR_EL1_ALIGN_MASK ;
 int SYS_PMBIDR_EL1_ALIGN_SHIFT ;
 int SYS_PMBIDR_EL1_P_SHIFT ;
 int SYS_PMSIDR_EL1 ;
 int SYS_PMSIDR_EL1_ARCHINST_SHIFT ;
 int SYS_PMSIDR_EL1_COUNTSIZE_MASK ;
 int SYS_PMSIDR_EL1_COUNTSIZE_SHIFT ;
 int SYS_PMSIDR_EL1_ERND_SHIFT ;
 int SYS_PMSIDR_EL1_FE_SHIFT ;
 int SYS_PMSIDR_EL1_FL_SHIFT ;
 int SYS_PMSIDR_EL1_FT_SHIFT ;
 int SYS_PMSIDR_EL1_INTERVAL_MASK ;
 int SYS_PMSIDR_EL1_INTERVAL_SHIFT ;
 int SYS_PMSIDR_EL1_LDS_SHIFT ;
 int SYS_PMSIDR_EL1_MAXSIZE_MASK ;
 int SYS_PMSIDR_EL1_MAXSIZE_SHIFT ;
 int SZ_2K ;
 int cpuid_feature_extract_unsigned_field (int ,int ) ;
 int cpumask_pr_args (int *) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int ,int,int,int ) ;
 int dev_warn (struct device*,char*,int) ;
 int read_cpuid (int ) ;
 int read_sysreg_s (int ) ;
 int smp_processor_id () ;

__attribute__((used)) static void __arm_spe_pmu_dev_probe(void *info)
{
 int fld;
 u64 reg;
 struct arm_spe_pmu *spe_pmu = info;
 struct device *dev = &spe_pmu->pdev->dev;

 fld = cpuid_feature_extract_unsigned_field(read_cpuid(ID_AA64DFR0_EL1),
         ID_AA64DFR0_PMSVER_SHIFT);
 if (!fld) {
  dev_err(dev,
   "unsupported ID_AA64DFR0_EL1.PMSVer [%d] on CPU %d\n",
   fld, smp_processor_id());
  return;
 }


 reg = read_sysreg_s(SYS_PMBIDR_EL1);
 if (reg & BIT(SYS_PMBIDR_EL1_P_SHIFT)) {
  dev_err(dev,
   "profiling buffer owned by higher exception level\n");
  return;
 }


 fld = reg >> SYS_PMBIDR_EL1_ALIGN_SHIFT & SYS_PMBIDR_EL1_ALIGN_MASK;
 spe_pmu->align = 1 << fld;
 if (spe_pmu->align > SZ_2K) {
  dev_err(dev, "unsupported PMBIDR.Align [%d] on CPU %d\n",
   fld, smp_processor_id());
  return;
 }


 reg = read_sysreg_s(SYS_PMSIDR_EL1);
 if (reg & BIT(SYS_PMSIDR_EL1_FE_SHIFT))
  spe_pmu->features |= SPE_PMU_FEAT_FILT_EVT;

 if (reg & BIT(SYS_PMSIDR_EL1_FT_SHIFT))
  spe_pmu->features |= SPE_PMU_FEAT_FILT_TYP;

 if (reg & BIT(SYS_PMSIDR_EL1_FL_SHIFT))
  spe_pmu->features |= SPE_PMU_FEAT_FILT_LAT;

 if (reg & BIT(SYS_PMSIDR_EL1_ARCHINST_SHIFT))
  spe_pmu->features |= SPE_PMU_FEAT_ARCH_INST;

 if (reg & BIT(SYS_PMSIDR_EL1_LDS_SHIFT))
  spe_pmu->features |= SPE_PMU_FEAT_LDS;

 if (reg & BIT(SYS_PMSIDR_EL1_ERND_SHIFT))
  spe_pmu->features |= SPE_PMU_FEAT_ERND;


 fld = reg >> SYS_PMSIDR_EL1_INTERVAL_SHIFT & SYS_PMSIDR_EL1_INTERVAL_MASK;
 switch (fld) {
 case 0:
  spe_pmu->min_period = 256;
  break;
 case 2:
  spe_pmu->min_period = 512;
  break;
 case 3:
  spe_pmu->min_period = 768;
  break;
 case 4:
  spe_pmu->min_period = 1024;
  break;
 case 5:
  spe_pmu->min_period = 1536;
  break;
 case 6:
  spe_pmu->min_period = 2048;
  break;
 case 7:
  spe_pmu->min_period = 3072;
  break;
 default:
  dev_warn(dev, "unknown PMSIDR_EL1.Interval [%d]; assuming 8\n",
    fld);

 case 8:
  spe_pmu->min_period = 4096;
 }


 fld = reg >> SYS_PMSIDR_EL1_MAXSIZE_SHIFT & SYS_PMSIDR_EL1_MAXSIZE_MASK;
 spe_pmu->max_record_sz = 1 << fld;
 if (spe_pmu->max_record_sz > SZ_2K || spe_pmu->max_record_sz < 16) {
  dev_err(dev, "unsupported PMSIDR_EL1.MaxSize [%d] on CPU %d\n",
   fld, smp_processor_id());
  return;
 }

 fld = reg >> SYS_PMSIDR_EL1_COUNTSIZE_SHIFT & SYS_PMSIDR_EL1_COUNTSIZE_MASK;
 switch (fld) {
 default:
  dev_warn(dev, "unknown PMSIDR_EL1.CountSize [%d]; assuming 2\n",
    fld);

 case 2:
  spe_pmu->counter_sz = 12;
 }

 dev_info(dev,
   "probed for CPUs %*pbl [max_record_sz %u, align %u, features 0x%llx]\n",
   cpumask_pr_args(&spe_pmu->supported_cpus),
   spe_pmu->max_record_sz, spe_pmu->align, spe_pmu->features);

 spe_pmu->features |= SPE_PMU_FEAT_DEV_PROBED;
 return;
}
