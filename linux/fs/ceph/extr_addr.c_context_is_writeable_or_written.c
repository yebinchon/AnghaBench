
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ceph_snap_context {scalar_t__ seq; } ;


 int ceph_put_snap_context (struct ceph_snap_context*) ;
 struct ceph_snap_context* get_oldest_context (struct inode*,int *,int *) ;

__attribute__((used)) static int context_is_writeable_or_written(struct inode *inode,
        struct ceph_snap_context *snapc)
{
 struct ceph_snap_context *oldest = get_oldest_context(inode, ((void*)0), ((void*)0));
 int ret = !oldest || snapc->seq <= oldest->seq;

 ceph_put_snap_context(oldest);
 return ret;
}
