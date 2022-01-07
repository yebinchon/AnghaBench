
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int id; int pmu; scalar_t__ base; int node; } ;
struct arm_ccn {int num_xps; TYPE_2__ dt; TYPE_1__* xp; scalar_t__ irq; } ;
struct TYPE_3__ {scalar_t__ base; } ;


 scalar_t__ CCN_DT_PMCR ;
 scalar_t__ CCN_XP_DT_CONTROL ;
 int CPUHP_AP_PERF_ARM_CCN_ONLINE ;
 int arm_ccn_pmu_ida ;
 int cpuhp_state_remove_instance_nocalls (int ,int *) ;
 int ida_simple_remove (int *,int ) ;
 int irq_set_affinity_hint (scalar_t__,int *) ;
 int perf_pmu_unregister (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void arm_ccn_pmu_cleanup(struct arm_ccn *ccn)
{
 int i;

 cpuhp_state_remove_instance_nocalls(CPUHP_AP_PERF_ARM_CCN_ONLINE,
         &ccn->dt.node);
 if (ccn->irq)
  irq_set_affinity_hint(ccn->irq, ((void*)0));
 for (i = 0; i < ccn->num_xps; i++)
  writel(0, ccn->xp[i].base + CCN_XP_DT_CONTROL);
 writel(0, ccn->dt.base + CCN_DT_PMCR);
 perf_pmu_unregister(&ccn->dt.pmu);
 ida_simple_remove(&arm_ccn_pmu_ida, ccn->dt.id);
}
