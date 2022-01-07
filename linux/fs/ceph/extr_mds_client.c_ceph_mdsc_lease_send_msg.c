
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct inode {int dummy; } ;
struct TYPE_4__ {int len; int name; } ;
struct dentry {int d_lock; TYPE_2__ d_name; int d_parent; } ;
struct TYPE_3__ {struct ceph_mds_lease* iov_base; } ;
struct ceph_msg {int more_to_follow; TYPE_1__ front; } ;
struct ceph_mds_session {int s_con; int s_mds; } ;
struct ceph_mds_lease {char action; void* last; void* first; void* ino; int seq; } ;


 char CEPH_MDS_LEASE_RELEASE ;
 int CEPH_MSG_CLIENT_LEASE ;
 int GFP_NOFS ;
 int NAME_MAX ;
 int ceph_con_send (int *,struct ceph_msg*) ;
 int ceph_ino (struct inode*) ;
 int ceph_lease_op_name (char) ;
 struct ceph_msg* ceph_msg_new (int ,int,int ,int) ;
 int ceph_snap (struct inode*) ;
 int cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 struct inode* d_inode (int ) ;
 int dout (char*,struct dentry*,int ,int ) ;
 int memcpy (void*,int ,int ) ;
 int put_unaligned_le32 (int ,struct ceph_mds_lease*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ceph_mdsc_lease_send_msg(struct ceph_mds_session *session,
         struct dentry *dentry, char action,
         u32 seq)
{
 struct ceph_msg *msg;
 struct ceph_mds_lease *lease;
 struct inode *dir;
 int len = sizeof(*lease) + sizeof(u32) + NAME_MAX;

 dout("lease_send_msg identry %p %s to mds%d\n",
      dentry, ceph_lease_op_name(action), session->s_mds);

 msg = ceph_msg_new(CEPH_MSG_CLIENT_LEASE, len, GFP_NOFS, 0);
 if (!msg)
  return;
 lease = msg->front.iov_base;
 lease->action = action;
 lease->seq = cpu_to_le32(seq);

 spin_lock(&dentry->d_lock);
 dir = d_inode(dentry->d_parent);
 lease->ino = cpu_to_le64(ceph_ino(dir));
 lease->first = lease->last = cpu_to_le64(ceph_snap(dir));

 put_unaligned_le32(dentry->d_name.len, lease + 1);
 memcpy((void *)(lease + 1) + 4,
        dentry->d_name.name, dentry->d_name.len);
 spin_unlock(&dentry->d_lock);





 msg->more_to_follow = (action == CEPH_MDS_LEASE_RELEASE);

 ceph_con_send(&session->s_con, msg);
}
