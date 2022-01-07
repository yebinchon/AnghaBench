
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union qm_mr_entry {int dummy; } qm_mr_entry ;


 union qm_mr_entry* mr_carryclear (union qm_mr_entry*) ;

__attribute__((used)) static inline union qm_mr_entry *mr_inc(union qm_mr_entry *e)
{
 return mr_carryclear(e + 1);
}
