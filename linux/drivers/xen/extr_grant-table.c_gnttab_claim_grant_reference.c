
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ grant_ref_t ;


 int ENOSPC ;
 scalar_t__ GNTTAB_LIST_END ;
 scalar_t__ gnttab_entry (scalar_t__) ;
 scalar_t__ unlikely (int) ;

int gnttab_claim_grant_reference(grant_ref_t *private_head)
{
 grant_ref_t g = *private_head;
 if (unlikely(g == GNTTAB_LIST_END))
  return -ENOSPC;
 *private_head = gnttab_entry(g);
 return g;
}
