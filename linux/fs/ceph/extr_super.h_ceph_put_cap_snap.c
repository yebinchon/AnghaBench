
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_cap_snap {scalar_t__ xattr_blob; int nref; } ;


 int ceph_buffer_put (scalar_t__) ;
 int kfree (struct ceph_cap_snap*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static inline void ceph_put_cap_snap(struct ceph_cap_snap *capsnap)
{
 if (refcount_dec_and_test(&capsnap->nref)) {
  if (capsnap->xattr_blob)
   ceph_buffer_put(capsnap->xattr_blob);
  kfree(capsnap);
 }
}
