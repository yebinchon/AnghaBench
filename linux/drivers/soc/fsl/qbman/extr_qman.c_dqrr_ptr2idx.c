
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_dqrr_entry {int dummy; } ;


 uintptr_t DQRR_SHIFT ;
 int QM_DQRR_SIZE ;

__attribute__((used)) static inline int dqrr_ptr2idx(const struct qm_dqrr_entry *e)
{
 return ((uintptr_t)e >> DQRR_SHIFT) & (QM_DQRR_SIZE - 1);
}
