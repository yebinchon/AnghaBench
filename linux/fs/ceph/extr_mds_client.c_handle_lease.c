
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct qstr {int len; void* name; int hash; } ;
struct inode {int dummy; } ;
struct dentry {int d_lock; } ;
struct ceph_vino {struct inode* ino; int snap; } ;
struct TYPE_4__ {int iov_len; struct ceph_mds_lease* iov_base; } ;
struct ceph_msg {TYPE_2__ front; } ;
struct ceph_mds_session {int s_mds; int s_mutex; int s_con; int s_cap_gen; int s_seq; } ;
struct ceph_mds_lease {int action; int duration_ms; int seq; int ino; } ;
struct ceph_mds_client {TYPE_1__* fsc; } ;
struct ceph_dentry_info {int lease_renew_from; int lease_renew_after; int time; int lease_seq; int lease_gen; struct ceph_mds_session* lease_session; } ;
struct TYPE_3__ {struct super_block* sb; } ;




 int CEPH_MDS_LEASE_REVOKE_ACK ;
 int CEPH_NOSNAP ;
 int WARN_ON (int) ;
 int __ceph_mdsc_drop_dentry_lease (struct dentry*) ;
 int ceph_async_iput (struct inode*) ;
 int ceph_con_send (int *,struct ceph_msg*) ;
 struct ceph_dentry_info* ceph_dentry (struct dentry*) ;
 struct inode* ceph_find_inode (struct super_block*,struct ceph_vino) ;
 int ceph_lease_op_name (int) ;
 int ceph_msg_dump (struct ceph_msg*) ;
 int ceph_msg_get (struct ceph_msg*) ;
 int ceph_seq_cmp (int ,int ) ;
 int cpu_to_le32 (int ) ;
 struct dentry* d_find_alias (struct inode*) ;
 struct dentry* d_lookup (struct dentry*,struct qstr*) ;
 int dout (char*,int,...) ;
 int dput (struct dentry*) ;
 int full_name_hash (struct dentry*,void*,int) ;
 int get_unaligned_le32 (struct ceph_mds_lease*) ;
 int le32_to_cpu (int ) ;
 struct inode* le64_to_cpu (int ) ;
 unsigned long msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void handle_lease(struct ceph_mds_client *mdsc,
    struct ceph_mds_session *session,
    struct ceph_msg *msg)
{
 struct super_block *sb = mdsc->fsc->sb;
 struct inode *inode;
 struct dentry *parent, *dentry;
 struct ceph_dentry_info *di;
 int mds = session->s_mds;
 struct ceph_mds_lease *h = msg->front.iov_base;
 u32 seq;
 struct ceph_vino vino;
 struct qstr dname;
 int release = 0;

 dout("handle_lease from mds%d\n", mds);


 if (msg->front.iov_len < sizeof(*h) + sizeof(u32))
  goto bad;
 vino.ino = le64_to_cpu(h->ino);
 vino.snap = CEPH_NOSNAP;
 seq = le32_to_cpu(h->seq);
 dname.len = get_unaligned_le32(h + 1);
 if (msg->front.iov_len < sizeof(*h) + sizeof(u32) + dname.len)
  goto bad;
 dname.name = (void *)(h + 1) + sizeof(u32);


 inode = ceph_find_inode(sb, vino);
 dout("handle_lease %s, ino %llx %p %.*s\n",
      ceph_lease_op_name(h->action), vino.ino, inode,
      dname.len, dname.name);

 mutex_lock(&session->s_mutex);
 session->s_seq++;

 if (!inode) {
  dout("handle_lease no inode %llx\n", vino.ino);
  goto release;
 }


 parent = d_find_alias(inode);
 if (!parent) {
  dout("no parent dentry on inode %p\n", inode);
  WARN_ON(1);
  goto release;
 }
 dname.hash = full_name_hash(parent, dname.name, dname.len);
 dentry = d_lookup(parent, &dname);
 dput(parent);
 if (!dentry)
  goto release;

 spin_lock(&dentry->d_lock);
 di = ceph_dentry(dentry);
 switch (h->action) {
 case 128:
  if (di->lease_session == session) {
   if (ceph_seq_cmp(di->lease_seq, seq) > 0)
    h->seq = cpu_to_le32(di->lease_seq);
   __ceph_mdsc_drop_dentry_lease(dentry);
  }
  release = 1;
  break;

 case 129:
  if (di->lease_session == session &&
      di->lease_gen == session->s_cap_gen &&
      di->lease_renew_from &&
      di->lease_renew_after == 0) {
   unsigned long duration =
    msecs_to_jiffies(le32_to_cpu(h->duration_ms));

   di->lease_seq = seq;
   di->time = di->lease_renew_from + duration;
   di->lease_renew_after = di->lease_renew_from +
    (duration >> 1);
   di->lease_renew_from = 0;
  }
  break;
 }
 spin_unlock(&dentry->d_lock);
 dput(dentry);

 if (!release)
  goto out;

release:

 h->action = CEPH_MDS_LEASE_REVOKE_ACK;
 ceph_msg_get(msg);
 ceph_con_send(&session->s_con, msg);

out:
 mutex_unlock(&session->s_mutex);

 ceph_async_iput(inode);
 return;

bad:
 pr_err("corrupt lease message\n");
 ceph_msg_dump(msg);
}
