
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_10__ {int* val; } ;
struct kstatfs {int f_bsize; int f_frsize; int f_blocks; int f_bfree; int f_bavail; int f_files; int f_ffree; TYPE_5__ f_fsid; int f_namelen; int f_type; } ;
struct dentry {int dummy; } ;
struct ceph_statfs {int num_objects; int kb_avail; int kb; } ;
struct ceph_mon_client {int mutex; TYPE_4__* monmap; } ;
struct ceph_fs_client {TYPE_3__* mdsc; TYPE_1__* client; } ;
typedef int __le64 ;
struct TYPE_9__ {int fsid; } ;
struct TYPE_8__ {TYPE_2__* mdsmap; } ;
struct TYPE_7__ {int m_num_data_pg_pools; int* m_data_pg_pools; } ;
struct TYPE_6__ {struct ceph_mon_client monc; } ;


 int CEPH_BLOCK_SHIFT ;
 int CEPH_NOPOOL ;
 int CEPH_SUPER_MAGIC ;
 int NAME_MAX ;
 int NOQUOTADF ;
 struct ceph_fs_client* ceph_inode_to_client (int ) ;
 int ceph_monc_do_statfs (struct ceph_mon_client*,int,struct ceph_statfs*) ;
 int ceph_quota_update_statfs (struct ceph_fs_client*,struct kstatfs*) ;
 scalar_t__ ceph_test_mount_opt (struct ceph_fs_client*,int ) ;
 int d_inode (struct dentry*) ;
 int dout (char*) ;
 int le64_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ceph_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct ceph_fs_client *fsc = ceph_inode_to_client(d_inode(dentry));
 struct ceph_mon_client *monc = &fsc->client->monc;
 struct ceph_statfs st;
 u64 fsid;
 int err;
 u64 data_pool;

 if (fsc->mdsc->mdsmap->m_num_data_pg_pools == 1) {
  data_pool = fsc->mdsc->mdsmap->m_data_pg_pools[0];
 } else {
  data_pool = CEPH_NOPOOL;
 }

 dout("statfs\n");
 err = ceph_monc_do_statfs(monc, data_pool, &st);
 if (err < 0)
  return err;


 buf->f_type = CEPH_SUPER_MAGIC;
 buf->f_bsize = 1 << CEPH_BLOCK_SHIFT;
 buf->f_frsize = 1 << CEPH_BLOCK_SHIFT;






 if (ceph_test_mount_opt(fsc, NOQUOTADF) ||
     !ceph_quota_update_statfs(fsc, buf)) {
  buf->f_blocks = le64_to_cpu(st.kb) >> (CEPH_BLOCK_SHIFT-10);
  buf->f_bfree = le64_to_cpu(st.kb_avail) >> (CEPH_BLOCK_SHIFT-10);
  buf->f_bavail = le64_to_cpu(st.kb_avail) >> (CEPH_BLOCK_SHIFT-10);
 }

 buf->f_files = le64_to_cpu(st.num_objects);
 buf->f_ffree = -1;
 buf->f_namelen = NAME_MAX;


 mutex_lock(&monc->mutex);
 fsid = le64_to_cpu(*(__le64 *)(&monc->monmap->fsid)) ^
        le64_to_cpu(*((__le64 *)&monc->monmap->fsid + 1));
 mutex_unlock(&monc->mutex);

 buf->f_fsid.val[0] = fsid & 0xffffffff;
 buf->f_fsid.val[1] = fsid >> 32;

 return 0;
}
