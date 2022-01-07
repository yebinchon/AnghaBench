
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_ctime; int i_atime; int i_mtime; int i_size; int i_sb; } ;
struct ceph_mds_client {int snap_flush_lock; int snap_flush_list; } ;
struct ceph_inode_info {int i_snap_flush_item; int i_ceph_flags; int i_truncate_seq; int i_truncate_size; int i_time_warp_seq; int i_btime; struct inode vfs_inode; } ;
struct ceph_cap_snap {int size; int dirty; TYPE_1__* context; scalar_t__ dirty_pages; int truncate_seq; int truncate_size; int time_warp_seq; int change_attr; int btime; int ctime; int atime; int mtime; int writing; } ;
struct TYPE_4__ {struct ceph_mds_client* mdsc; } ;
struct TYPE_3__ {int seq; } ;


 int BUG_ON (int ) ;
 int CEPH_I_FLUSH_SNAPS ;
 int ceph_cap_string (int ) ;
 TYPE_2__* ceph_sb_to_client (int ) ;
 int dout (char*,struct inode*,struct ceph_cap_snap*,TYPE_1__*,int ,int ,int ,...) ;
 int inode_peek_iversion_raw (struct inode*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int __ceph_finish_cap_snap(struct ceph_inode_info *ci,
       struct ceph_cap_snap *capsnap)
{
 struct inode *inode = &ci->vfs_inode;
 struct ceph_mds_client *mdsc = ceph_sb_to_client(inode->i_sb)->mdsc;

 BUG_ON(capsnap->writing);
 capsnap->size = inode->i_size;
 capsnap->mtime = inode->i_mtime;
 capsnap->atime = inode->i_atime;
 capsnap->ctime = inode->i_ctime;
 capsnap->btime = ci->i_btime;
 capsnap->change_attr = inode_peek_iversion_raw(inode);
 capsnap->time_warp_seq = ci->i_time_warp_seq;
 capsnap->truncate_size = ci->i_truncate_size;
 capsnap->truncate_seq = ci->i_truncate_seq;
 if (capsnap->dirty_pages) {
  dout("finish_cap_snap %p cap_snap %p snapc %p %llu %s s=%llu "
       "still has %d dirty pages\n", inode, capsnap,
       capsnap->context, capsnap->context->seq,
       ceph_cap_string(capsnap->dirty), capsnap->size,
       capsnap->dirty_pages);
  return 0;
 }

 ci->i_ceph_flags |= CEPH_I_FLUSH_SNAPS;
 dout("finish_cap_snap %p cap_snap %p snapc %p %llu %s s=%llu\n",
      inode, capsnap, capsnap->context,
      capsnap->context->seq, ceph_cap_string(capsnap->dirty),
      capsnap->size);

 spin_lock(&mdsc->snap_flush_lock);
 if (list_empty(&ci->i_snap_flush_item))
  list_add_tail(&ci->i_snap_flush_item, &mdsc->snap_flush_list);
 spin_unlock(&mdsc->snap_flush_lock);
 return 1;
}
