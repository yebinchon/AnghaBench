
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_front_pgdir_shbuf {scalar_t__* grefs; int num_grefs; scalar_t__* directory; } ;


 scalar_t__ GRANT_INVALID_REF ;
 int gnttab_end_foreign_access (scalar_t__,int ,unsigned long) ;
 int kfree (scalar_t__*) ;

void xen_front_pgdir_shbuf_free(struct xen_front_pgdir_shbuf *buf)
{
 if (buf->grefs) {
  int i;

  for (i = 0; i < buf->num_grefs; i++)
   if (buf->grefs[i] != GRANT_INVALID_REF)
    gnttab_end_foreign_access(buf->grefs[i],
         0, 0UL);
 }
 kfree(buf->grefs);
 kfree(buf->directory);
}
