
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_eqcr_entry {int dummy; } ;


 uintptr_t EQCR_CARRY ;

__attribute__((used)) static struct qm_eqcr_entry *eqcr_carryclear(struct qm_eqcr_entry *p)
{
 uintptr_t addr = (uintptr_t)p;

 addr &= ~EQCR_CARRY;

 return (struct qm_eqcr_entry *)addr;
}
