
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct ceph_vino {scalar_t__ ino; int snap; } ;
struct ceph_snap_realm {scalar_t__ created; int ino; int inodes_with_caps_lock; struct inode* inode; int inodes_with_caps; } ;
struct TYPE_5__ {int iov_len; void* iov_base; } ;
struct ceph_msg {TYPE_2__ front; } ;
struct ceph_mds_snap_realm {int created; } ;
struct ceph_mds_snap_head {int trace_len; int num_split_realms; int num_split_inos; int split; int op; } ;
struct ceph_mds_session {int s_mds; int s_mutex; int s_seq; } ;
struct ceph_mds_client {int snap_rwsem; TYPE_1__* fsc; } ;
struct TYPE_6__ {int ino; } ;
struct ceph_inode_info {int i_ceph_lock; TYPE_3__ i_vino; struct ceph_snap_realm* i_snap_realm; int i_snap_realm_item; } ;
typedef int __le64 ;
struct TYPE_4__ {struct super_block* sb; } ;


 int CEPH_NOSNAP ;
 int CEPH_SNAP_OP_DESTROY ;
 int CEPH_SNAP_OP_SPLIT ;
 scalar_t__ IS_ERR (struct ceph_snap_realm*) ;
 int __cleanup_empty_realms (struct ceph_mds_client*) ;
 struct ceph_snap_realm* __lookup_snap_realm (struct ceph_mds_client*,scalar_t__) ;
 int adjust_snap_realm_parent (struct ceph_mds_client*,struct ceph_snap_realm*,int ) ;
 int bad ;
 int ceph_async_iput (struct inode*) ;
 struct ceph_snap_realm* ceph_create_snap_realm (struct ceph_mds_client*,scalar_t__) ;
 int ceph_decode_need (void**,void*,int,int ) ;
 struct inode* ceph_find_inode (struct super_block*,struct ceph_vino) ;
 int ceph_get_snap_realm (struct ceph_mds_client*,struct ceph_snap_realm*) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 struct ceph_snap_realm* ceph_lookup_snap_realm (struct ceph_mds_client*,scalar_t__) ;
 int ceph_msg_dump (struct ceph_msg*) ;
 int ceph_put_snap_realm (struct ceph_mds_client*,struct ceph_snap_realm*) ;
 int ceph_snap_op_name (int) ;
 int ceph_update_snap_trace (struct ceph_mds_client*,void*,void*,int,int *) ;
 int dout (char*,int,struct ceph_snap_realm*,...) ;
 int down_write (int *) ;
 int flush_snaps (struct ceph_mds_client*) ;
 int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int list_add (int *,int *) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_write (int *) ;

void ceph_handle_snap(struct ceph_mds_client *mdsc,
        struct ceph_mds_session *session,
        struct ceph_msg *msg)
{
 struct super_block *sb = mdsc->fsc->sb;
 int mds = session->s_mds;
 u64 split;
 int op;
 int trace_len;
 struct ceph_snap_realm *realm = ((void*)0);
 void *p = msg->front.iov_base;
 void *e = p + msg->front.iov_len;
 struct ceph_mds_snap_head *h;
 int num_split_inos, num_split_realms;
 __le64 *split_inos = ((void*)0), *split_realms = ((void*)0);
 int i;
 int locked_rwsem = 0;


 if (msg->front.iov_len < sizeof(*h))
  goto bad;
 h = p;
 op = le32_to_cpu(h->op);
 split = le64_to_cpu(h->split);

 num_split_inos = le32_to_cpu(h->num_split_inos);
 num_split_realms = le32_to_cpu(h->num_split_realms);
 trace_len = le32_to_cpu(h->trace_len);
 p += sizeof(*h);

 dout("handle_snap from mds%d op %s split %llx tracelen %d\n", mds,
      ceph_snap_op_name(op), split, trace_len);

 mutex_lock(&session->s_mutex);
 session->s_seq++;
 mutex_unlock(&session->s_mutex);

 down_write(&mdsc->snap_rwsem);
 locked_rwsem = 1;

 if (op == CEPH_SNAP_OP_SPLIT) {
  struct ceph_mds_snap_realm *ri;







  split_inos = p;
  p += sizeof(u64) * num_split_inos;
  split_realms = p;
  p += sizeof(u64) * num_split_realms;
  ceph_decode_need(&p, e, sizeof(*ri), bad);



  ri = p;

  realm = ceph_lookup_snap_realm(mdsc, split);
  if (!realm) {
   realm = ceph_create_snap_realm(mdsc, split);
   if (IS_ERR(realm))
    goto out;
  }

  dout("splitting snap_realm %llx %p\n", realm->ino, realm);
  for (i = 0; i < num_split_inos; i++) {
   struct ceph_vino vino = {
    .ino = le64_to_cpu(split_inos[i]),
    .snap = CEPH_NOSNAP,
   };
   struct inode *inode = ceph_find_inode(sb, vino);
   struct ceph_inode_info *ci;
   struct ceph_snap_realm *oldrealm;

   if (!inode)
    continue;
   ci = ceph_inode(inode);

   spin_lock(&ci->i_ceph_lock);
   if (!ci->i_snap_realm)
    goto skip_inode;







   if (ci->i_snap_realm->created >
       le64_to_cpu(ri->created)) {
    dout(" leaving %p in newer realm %llx %p\n",
         inode, ci->i_snap_realm->ino,
         ci->i_snap_realm);
    goto skip_inode;
   }
   dout(" will move %p to split realm %llx %p\n",
        inode, realm->ino, realm);



   oldrealm = ci->i_snap_realm;
   spin_lock(&oldrealm->inodes_with_caps_lock);
   list_del_init(&ci->i_snap_realm_item);
   spin_unlock(&oldrealm->inodes_with_caps_lock);

   spin_lock(&realm->inodes_with_caps_lock);
   list_add(&ci->i_snap_realm_item,
     &realm->inodes_with_caps);
   ci->i_snap_realm = realm;
   if (realm->ino == ci->i_vino.ino)
                                realm->inode = inode;
   spin_unlock(&realm->inodes_with_caps_lock);

   spin_unlock(&ci->i_ceph_lock);

   ceph_get_snap_realm(mdsc, realm);
   ceph_put_snap_realm(mdsc, oldrealm);



   ceph_async_iput(inode);
   continue;

skip_inode:
   spin_unlock(&ci->i_ceph_lock);
   ceph_async_iput(inode);
  }


  for (i = 0; i < num_split_realms; i++) {
   struct ceph_snap_realm *child =
    __lookup_snap_realm(mdsc,
        le64_to_cpu(split_realms[i]));
   if (!child)
    continue;
   adjust_snap_realm_parent(mdsc, child, realm->ino);
  }
 }





 ceph_update_snap_trace(mdsc, p, e,
          op == CEPH_SNAP_OP_DESTROY, ((void*)0));

 if (op == CEPH_SNAP_OP_SPLIT)

  ceph_put_snap_realm(mdsc, realm);

 __cleanup_empty_realms(mdsc);

 up_write(&mdsc->snap_rwsem);

 flush_snaps(mdsc);
 return;

bad:
 pr_err("corrupt snap message from mds%d\n", mds);
 ceph_msg_dump(msg);
out:
 if (locked_rwsem)
  up_write(&mdsc->snap_rwsem);
 return;
}
