
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct perf_output_handle {int head; } ;
struct arm_spe_pmu_buf {int snapshot; scalar_t__ base; } ;


 int ARM_SPE_BUF_PAD_BYTE ;
 scalar_t__ PERF_IDX2OFF (int ,struct arm_spe_pmu_buf*) ;
 int memset (scalar_t__,int ,int) ;
 int perf_aux_output_skip (struct perf_output_handle*,int) ;
 struct arm_spe_pmu_buf* perf_get_aux (struct perf_output_handle*) ;

__attribute__((used)) static void arm_spe_pmu_pad_buf(struct perf_output_handle *handle, int len)
{
 struct arm_spe_pmu_buf *buf = perf_get_aux(handle);
 u64 head = PERF_IDX2OFF(handle->head, buf);

 memset(buf->base + head, ARM_SPE_BUF_PAD_BYTE, len);
 if (!buf->snapshot)
  perf_aux_output_skip(handle, len);
}
