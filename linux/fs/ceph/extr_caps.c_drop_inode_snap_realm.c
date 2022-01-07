
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ceph_snap_realm {scalar_t__ ino; int inodes_with_caps_lock; int * inode; } ;
struct TYPE_5__ {int i_sb; } ;
struct TYPE_4__ {scalar_t__ ino; } ;
struct ceph_inode_info {TYPE_2__ vfs_inode; TYPE_1__ i_vino; struct ceph_snap_realm* i_snap_realm; int i_snap_realm_counter; int i_snap_realm_item; } ;
struct TYPE_6__ {int mdsc; } ;


 int ceph_put_snap_realm (int ,struct ceph_snap_realm*) ;
 TYPE_3__* ceph_sb_to_client (int ) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void drop_inode_snap_realm(struct ceph_inode_info *ci)
{
 struct ceph_snap_realm *realm = ci->i_snap_realm;
 spin_lock(&realm->inodes_with_caps_lock);
 list_del_init(&ci->i_snap_realm_item);
 ci->i_snap_realm_counter++;
 ci->i_snap_realm = ((void*)0);
 if (realm->ino == ci->i_vino.ino)
  realm->inode = ((void*)0);
 spin_unlock(&realm->inodes_with_caps_lock);
 ceph_put_snap_realm(ceph_sb_to_client(ci->vfs_inode.i_sb)->mdsc,
       realm);
}
