
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union MPI2_REPLY_DESCRIPTORS_UNION {int Words; } ;
struct megasas_instance {scalar_t__ msix_vectors; struct fusion_context* ctrl_context; } ;
struct fusion_context {int reply_q_depth; union MPI2_REPLY_DESCRIPTORS_UNION** reply_frames_desc; scalar_t__* last_reply_idx; } ;


 int ULLONG_MAX ;
 int cpu_to_le64 (int ) ;

void megasas_reset_reply_desc(struct megasas_instance *instance)
{
 int i, j, count;
 struct fusion_context *fusion;
 union MPI2_REPLY_DESCRIPTORS_UNION *reply_desc;

 fusion = instance->ctrl_context;
 count = instance->msix_vectors > 0 ? instance->msix_vectors : 1;
 for (i = 0 ; i < count ; i++) {
  fusion->last_reply_idx[i] = 0;
  reply_desc = fusion->reply_frames_desc[i];
  for (j = 0 ; j < fusion->reply_q_depth; j++, reply_desc++)
   reply_desc->Words = cpu_to_le64(ULLONG_MAX);
 }
}
