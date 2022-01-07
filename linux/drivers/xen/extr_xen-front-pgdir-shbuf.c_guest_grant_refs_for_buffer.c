
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_front_pgdir_shbuf {int num_pages; int* grefs; int * pages; TYPE_1__* xb_dev; } ;
typedef int grant_ref_t ;
struct TYPE_2__ {int otherend_id; } ;


 int gnttab_claim_grant_reference (int *) ;
 int gnttab_grant_foreign_access_ref (int,int,int ,int ) ;
 int xen_page_to_gfn (int ) ;

__attribute__((used)) static int guest_grant_refs_for_buffer(struct xen_front_pgdir_shbuf *buf,
           grant_ref_t *priv_gref_head,
           int gref_idx)
{
 int i, cur_ref, otherend_id;

 otherend_id = buf->xb_dev->otherend_id;
 for (i = 0; i < buf->num_pages; i++) {
  cur_ref = gnttab_claim_grant_reference(priv_gref_head);
  if (cur_ref < 0)
   return cur_ref;

  gnttab_grant_foreign_access_ref(cur_ref, otherend_id,
      xen_page_to_gfn(buf->pages[i]),
      0);
  buf->grefs[gref_idx++] = cur_ref;
 }
 return 0;
}
