
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i_mode; } ;
struct ceph_inode_info {TYPE_1__ vfs_inode; int i_shared_gen; int i_rdcache_gen; } ;
struct ceph_cap {int dummy; } ;


 unsigned int CEPH_CAP_FILE_CACHE ;
 unsigned int CEPH_CAP_FILE_LAZYIO ;
 unsigned int CEPH_CAP_FILE_SHARED ;
 scalar_t__ S_ISDIR (int ) ;
 unsigned int __ceph_caps_issued (struct ceph_inode_info*,int *) ;
 int __ceph_dir_clear_complete (struct ceph_inode_info*) ;
 int atomic_inc (int *) ;
 int dout (char*,TYPE_1__*) ;

__attribute__((used)) static void __check_cap_issue(struct ceph_inode_info *ci, struct ceph_cap *cap,
         unsigned issued)
{
 unsigned had = __ceph_caps_issued(ci, ((void*)0));





 if ((issued & (CEPH_CAP_FILE_CACHE|CEPH_CAP_FILE_LAZYIO)) &&
     (had & (CEPH_CAP_FILE_CACHE|CEPH_CAP_FILE_LAZYIO)) == 0) {
  ci->i_rdcache_gen++;
 }







 if ((issued & CEPH_CAP_FILE_SHARED) != (had & CEPH_CAP_FILE_SHARED)) {
  if (issued & CEPH_CAP_FILE_SHARED)
   atomic_inc(&ci->i_shared_gen);
  if (S_ISDIR(ci->vfs_inode.i_mode)) {
   dout(" marking %p NOT complete\n", &ci->vfs_inode);
   __ceph_dir_clear_complete(ci);
  }
 }
}
