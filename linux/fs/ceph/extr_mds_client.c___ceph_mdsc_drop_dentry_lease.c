
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct ceph_dentry_info {int * lease_session; } ;


 struct ceph_dentry_info* ceph_dentry (struct dentry*) ;
 int ceph_put_mds_session (int *) ;

void __ceph_mdsc_drop_dentry_lease(struct dentry *dentry)
{
 struct ceph_dentry_info *di = ceph_dentry(dentry);

 ceph_put_mds_session(di->lease_session);
 di->lease_session = ((void*)0);
}
