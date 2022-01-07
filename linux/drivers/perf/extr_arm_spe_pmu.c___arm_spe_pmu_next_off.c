
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct perf_output_handle {scalar_t__ head; unsigned long size; scalar_t__ wakeup; TYPE_1__* event; } ;
struct arm_spe_pmu_buf {unsigned long nr_pages; } ;
struct arm_spe_pmu {int align; } ;
struct TYPE_2__ {int pmu; } ;


 int IS_ALIGNED (unsigned long,int ) ;
 unsigned long PAGE_SIZE ;
 int PERF_AUX_FLAG_TRUNCATED ;
 unsigned long PERF_IDX2OFF (scalar_t__,struct arm_spe_pmu_buf*) ;
 int arm_spe_pmu_pad_buf (struct perf_output_handle*,unsigned long) ;
 unsigned long min (unsigned long,unsigned long) ;
 int perf_aux_output_end (struct perf_output_handle*,int ) ;
 int perf_aux_output_flag (struct perf_output_handle*,int ) ;
 struct arm_spe_pmu_buf* perf_get_aux (struct perf_output_handle*) ;
 unsigned long round_down (unsigned long,unsigned long) ;
 unsigned long round_up (unsigned long,unsigned long) ;
 unsigned long roundup (unsigned long,int ) ;
 struct arm_spe_pmu* to_spe_pmu (int ) ;

__attribute__((used)) static u64 __arm_spe_pmu_next_off(struct perf_output_handle *handle)
{
 struct arm_spe_pmu *spe_pmu = to_spe_pmu(handle->event->pmu);
 struct arm_spe_pmu_buf *buf = perf_get_aux(handle);
 const u64 bufsize = buf->nr_pages * PAGE_SIZE;
 u64 limit = bufsize;
 u64 head, tail, wakeup;
 head = PERF_IDX2OFF(handle->head, buf);
 if (!IS_ALIGNED(head, spe_pmu->align)) {
  unsigned long delta = roundup(head, spe_pmu->align) - head;

  delta = min(delta, handle->size);
  arm_spe_pmu_pad_buf(handle, delta);
  head = PERF_IDX2OFF(handle->head, buf);
 }


 if (!handle->size)
  goto no_space;


 tail = PERF_IDX2OFF(handle->head + handle->size, buf);
 wakeup = PERF_IDX2OFF(handle->wakeup, buf);







 if (head < tail)
  limit = round_down(tail, PAGE_SIZE);
 if (handle->wakeup < (handle->head + handle->size) && head <= wakeup)
  limit = min(limit, round_up(wakeup, PAGE_SIZE));

 if (limit > head)
  return limit;

 arm_spe_pmu_pad_buf(handle, handle->size);
no_space:
 perf_aux_output_flag(handle, PERF_AUX_FLAG_TRUNCATED);
 perf_aux_output_end(handle, 0);
 return 0;
}
