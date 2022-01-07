
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union qm_mr_entry {int dummy; } qm_mr_entry ;


 uintptr_t MR_SHIFT ;
 int QM_MR_SIZE ;

__attribute__((used)) static inline int mr_ptr2idx(const union qm_mr_entry *e)
{
 return ((uintptr_t)e >> MR_SHIFT) & (QM_MR_SIZE - 1);
}
