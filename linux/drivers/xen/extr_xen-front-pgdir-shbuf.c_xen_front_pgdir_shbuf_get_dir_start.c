
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_front_pgdir_shbuf {int * grefs; } ;
typedef int grant_ref_t ;


 int GRANT_INVALID_REF ;

grant_ref_t
xen_front_pgdir_shbuf_get_dir_start(struct xen_front_pgdir_shbuf *buf)
{
 if (!buf->grefs)
  return GRANT_INVALID_REF;

 return buf->grefs[0];
}
