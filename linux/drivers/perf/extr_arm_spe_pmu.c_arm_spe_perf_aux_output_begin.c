
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct perf_output_handle {int head; } ;
struct TYPE_2__ {int state; } ;
struct perf_event {TYPE_1__ hw; } ;
struct arm_spe_pmu_buf {scalar_t__ base; scalar_t__ snapshot; } ;


 int BIT (int ) ;
 int PERF_HES_STOPPED ;
 int PERF_IDX2OFF (int ,struct arm_spe_pmu_buf*) ;
 int SYS_PMBLIMITR_EL1 ;
 int SYS_PMBLIMITR_EL1_E_SHIFT ;
 int SYS_PMBPTR_EL1 ;
 int arm_spe_pmu_next_off (struct perf_output_handle*) ;
 int arm_spe_pmu_next_snapshot_off (struct perf_output_handle*) ;
 struct arm_spe_pmu_buf* perf_aux_output_begin (struct perf_output_handle*,struct perf_event*) ;
 int write_sysreg_s (int,int ) ;

__attribute__((used)) static void arm_spe_perf_aux_output_begin(struct perf_output_handle *handle,
       struct perf_event *event)
{
 u64 base, limit;
 struct arm_spe_pmu_buf *buf;


 buf = perf_aux_output_begin(handle, event);
 if (!buf) {
  event->hw.state |= PERF_HES_STOPPED;




  limit = 0;
  goto out_write_limit;
 }

 limit = buf->snapshot ? arm_spe_pmu_next_snapshot_off(handle)
         : arm_spe_pmu_next_off(handle);
 if (limit)
  limit |= BIT(SYS_PMBLIMITR_EL1_E_SHIFT);

 limit += (u64)buf->base;
 base = (u64)buf->base + PERF_IDX2OFF(handle->head, buf);
 write_sysreg_s(base, SYS_PMBPTR_EL1);

out_write_limit:
 write_sysreg_s(limit, SYS_PMBLIMITR_EL1);
}
