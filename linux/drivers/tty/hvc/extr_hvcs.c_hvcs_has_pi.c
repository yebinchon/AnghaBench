
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvcs_struct {int p_partition_ID; int p_unit_address; } ;



__attribute__((used)) static int hvcs_has_pi(struct hvcs_struct *hvcsd)
{
 if ((!hvcsd->p_unit_address) || (!hvcsd->p_partition_ID))
  return 0;
 return 1;
}
