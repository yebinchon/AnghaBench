
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_fs_client {int client; int mount_options; int wb_pagevec_pool; int cap_wq; int inode_wq; } ;


 int ceph_destroy_client (int ) ;
 int ceph_mdsc_destroy (struct ceph_fs_client*) ;
 int destroy_mount_options (int ) ;
 int destroy_workqueue (int ) ;
 int dout (char*,struct ceph_fs_client*) ;
 int kfree (struct ceph_fs_client*) ;
 int mempool_destroy (int ) ;

__attribute__((used)) static void destroy_fs_client(struct ceph_fs_client *fsc)
{
 dout("destroy_fs_client %p\n", fsc);

 ceph_mdsc_destroy(fsc);
 destroy_workqueue(fsc->inode_wq);
 destroy_workqueue(fsc->cap_wq);

 mempool_destroy(fsc->wb_pagevec_pool);

 destroy_mount_options(fsc->mount_options);

 ceph_destroy_client(fsc->client);

 kfree(fsc);
 dout("destroy_fs_client %p done\n", fsc);
}
