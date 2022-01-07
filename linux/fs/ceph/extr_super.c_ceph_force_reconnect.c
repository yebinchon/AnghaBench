
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {scalar_t__ s_root; } ;
struct ceph_fs_client {int blacklisted; int mount_state; TYPE_1__* client; int inode_wq; } ;
struct TYPE_2__ {int osdc; } ;


 int CEPH_MOUNT_MOUNTED ;
 int CEPH_STAT_CAP_INODE ;
 int __ceph_do_getattr (int ,int *,int ,int) ;
 int ceph_osdc_clear_abort_err (int *) ;
 int ceph_reset_client_addr (TYPE_1__*) ;
 struct ceph_fs_client* ceph_sb_to_client (struct super_block*) ;
 int ceph_umount_begin (struct super_block*) ;
 int d_inode (scalar_t__) ;
 int flush_workqueue (int ) ;

int ceph_force_reconnect(struct super_block *sb)
{
 struct ceph_fs_client *fsc = ceph_sb_to_client(sb);
 int err = 0;

 ceph_umount_begin(sb);



 flush_workqueue(fsc->inode_wq);



 ceph_reset_client_addr(fsc->client);

 ceph_osdc_clear_abort_err(&fsc->client->osdc);

 fsc->blacklisted = 0;
 fsc->mount_state = CEPH_MOUNT_MOUNTED;

 if (sb->s_root) {
  err = __ceph_do_getattr(d_inode(sb->s_root), ((void*)0),
     CEPH_STAT_CAP_INODE, 1);
 }
 return err;
}
