
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union qm_mr_entry {int dummy; } qm_mr_entry ;


 uintptr_t MR_CARRY ;

__attribute__((used)) static union qm_mr_entry *mr_carryclear(union qm_mr_entry *p)
{
 uintptr_t addr = (uintptr_t)p;

 addr &= ~MR_CARRY;

 return (union qm_mr_entry *)addr;
}
