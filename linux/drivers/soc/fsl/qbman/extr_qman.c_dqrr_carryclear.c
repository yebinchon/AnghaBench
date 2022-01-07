
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_dqrr_entry {int dummy; } ;


 uintptr_t DQRR_CARRY ;

__attribute__((used)) static const struct qm_dqrr_entry *dqrr_carryclear(
     const struct qm_dqrr_entry *p)
{
 uintptr_t addr = (uintptr_t)p;

 addr &= ~DQRR_CARRY;

 return (const struct qm_dqrr_entry *)addr;
}
