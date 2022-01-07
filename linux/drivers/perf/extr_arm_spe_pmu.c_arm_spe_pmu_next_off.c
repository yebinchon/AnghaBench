
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct perf_output_handle {int head; TYPE_1__* event; } ;
struct arm_spe_pmu_buf {int dummy; } ;
struct arm_spe_pmu {scalar_t__ max_record_sz; } ;
struct TYPE_2__ {int pmu; } ;


 scalar_t__ PERF_IDX2OFF (int ,struct arm_spe_pmu_buf*) ;
 scalar_t__ __arm_spe_pmu_next_off (struct perf_output_handle*) ;
 int arm_spe_pmu_pad_buf (struct perf_output_handle*,scalar_t__) ;
 struct arm_spe_pmu_buf* perf_get_aux (struct perf_output_handle*) ;
 struct arm_spe_pmu* to_spe_pmu (int ) ;

__attribute__((used)) static u64 arm_spe_pmu_next_off(struct perf_output_handle *handle)
{
 struct arm_spe_pmu_buf *buf = perf_get_aux(handle);
 struct arm_spe_pmu *spe_pmu = to_spe_pmu(handle->event->pmu);
 u64 limit = __arm_spe_pmu_next_off(handle);
 u64 head = PERF_IDX2OFF(handle->head, buf);





 if (limit && (limit - head < spe_pmu->max_record_sz)) {
  arm_spe_pmu_pad_buf(handle, limit - head);
  limit = __arm_spe_pmu_next_off(handle);
 }

 return limit;
}
