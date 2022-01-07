
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_snap_context {scalar_t__ num_snaps; scalar_t__* snaps; scalar_t__ seq; } ;



__attribute__((used)) static bool has_new_snaps(struct ceph_snap_context *o,
     struct ceph_snap_context *n)
{
 if (n->num_snaps == 0)
  return 0;

 return n->snaps[0] > o->seq;
}
