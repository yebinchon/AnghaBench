
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {struct ceph_dentry_info* d_fsdata; } ;
struct ceph_dentry_info {int lease_list; int time; int * lease_session; struct dentry* dentry; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ceph_dentry_cachep ;
 int jiffies ;
 struct ceph_dentry_info* kmem_cache_zalloc (int ,int ) ;

__attribute__((used)) static int ceph_d_init(struct dentry *dentry)
{
 struct ceph_dentry_info *di;

 di = kmem_cache_zalloc(ceph_dentry_cachep, GFP_KERNEL);
 if (!di)
  return -ENOMEM;

 di->dentry = dentry;
 di->lease_session = ((void*)0);
 di->time = jiffies;
 dentry->d_fsdata = di;
 INIT_LIST_HEAD(&di->lease_list);
 return 0;
}
