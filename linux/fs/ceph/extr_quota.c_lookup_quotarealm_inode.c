
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct ceph_snap_realm {int ino; } ;
struct ceph_quotarealm_inode {int mutex; struct inode* inode; scalar_t__ timeout; } ;
struct ceph_mds_client {int dummy; } ;


 int CEPH_STAT_CAP_INODE ;
 struct inode* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int __ceph_do_getattr (struct inode*,int *,int ,int) ;
 scalar_t__ ceph_is_any_caps (struct inode*) ;
 struct inode* ceph_lookup_inode (struct super_block*,int ) ;
 struct ceph_quotarealm_inode* find_quotarealm_inode (struct ceph_mds_client*,int ) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*,int ,int ) ;
 scalar_t__ time_before_eq (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct inode *lookup_quotarealm_inode(struct ceph_mds_client *mdsc,
          struct super_block *sb,
          struct ceph_snap_realm *realm)
{
 struct ceph_quotarealm_inode *qri;
 struct inode *in;

 qri = find_quotarealm_inode(mdsc, realm->ino);
 if (!qri)
  return ((void*)0);

 mutex_lock(&qri->mutex);
 if (qri->inode && ceph_is_any_caps(qri->inode)) {

  mutex_unlock(&qri->mutex);
  return qri->inode;
 }

 if (qri->timeout &&
     time_before_eq(jiffies, qri->timeout)) {
  mutex_unlock(&qri->mutex);
  return ((void*)0);
 }
 if (qri->inode) {

  int ret = __ceph_do_getattr(qri->inode, ((void*)0),
         CEPH_STAT_CAP_INODE, 1);
  if (ret >= 0)
   in = qri->inode;
  else
   in = ERR_PTR(ret);
 } else {
  in = ceph_lookup_inode(sb, realm->ino);
 }

 if (IS_ERR(in)) {
  pr_warn("Can't lookup inode %llx (err: %ld)\n",
   realm->ino, PTR_ERR(in));
  qri->timeout = jiffies + msecs_to_jiffies(60 * 1000);
 } else {
  qri->timeout = 0;
  qri->inode = in;
 }
 mutex_unlock(&qri->mutex);

 return in;
}
