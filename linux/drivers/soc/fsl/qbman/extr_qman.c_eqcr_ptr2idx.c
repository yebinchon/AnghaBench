
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_eqcr_entry {int dummy; } ;


 uintptr_t EQCR_SHIFT ;
 int QM_EQCR_SIZE ;

__attribute__((used)) static int eqcr_ptr2idx(struct qm_eqcr_entry *e)
{
 return ((uintptr_t)e >> EQCR_SHIFT) & (QM_EQCR_SIZE - 1);
}
