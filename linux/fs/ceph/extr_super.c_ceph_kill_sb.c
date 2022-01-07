
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_dev; } ;
struct ceph_fs_client {TYPE_1__* client; int mdsc; } ;
typedef int dev_t ;
struct TYPE_2__ {int * extra_mon_dispatch; } ;


 int ceph_fs_debugfs_cleanup (struct ceph_fs_client*) ;
 int ceph_fscache_unregister_fs (struct ceph_fs_client*) ;
 int ceph_mdsc_pre_umount (int ) ;
 struct ceph_fs_client* ceph_sb_to_client (struct super_block*) ;
 int destroy_fs_client (struct ceph_fs_client*) ;
 int dout (char*,struct super_block*) ;
 int flush_fs_workqueues (struct ceph_fs_client*) ;
 int free_anon_bdev (int ) ;
 int generic_shutdown_super (struct super_block*) ;

__attribute__((used)) static void ceph_kill_sb(struct super_block *s)
{
 struct ceph_fs_client *fsc = ceph_sb_to_client(s);
 dev_t dev = s->s_dev;

 dout("kill_sb %p\n", s);

 ceph_mdsc_pre_umount(fsc->mdsc);
 flush_fs_workqueues(fsc);

 generic_shutdown_super(s);

 fsc->client->extra_mon_dispatch = ((void*)0);
 ceph_fs_debugfs_cleanup(fsc);

 ceph_fscache_unregister_fs(fsc);

 destroy_fs_client(fsc);
 free_anon_bdev(dev);
}
