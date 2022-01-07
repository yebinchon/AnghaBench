
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct qed_fcoe_tid {size_t num_tids_per_block; size_t size; scalar_t__* blocks; } ;



__attribute__((used)) static inline void *qedf_get_task_mem(struct qed_fcoe_tid *info, u32 tid)
{
 return (void *)(info->blocks[tid / info->num_tids_per_block] +
   (tid % info->num_tids_per_block) * info->size);
}
