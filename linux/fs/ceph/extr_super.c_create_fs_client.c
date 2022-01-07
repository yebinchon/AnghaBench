
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct page {int dummy; } ;
struct ceph_options {int dummy; } ;
struct ceph_mount_options {int wsize; int mds_namespace; } ;
struct ceph_fs_client {int filp_gen; TYPE_1__* client; void* inode_wq; void* cap_wq; int wb_pagevec_pool; struct ceph_mount_options* mount_options; int writeback_count; int mount_state; int * sb; } ;
struct TYPE_6__ {int monc; int extra_mon_dispatch; } ;


 int ABORT_ON_FULL ;
 int CEPH_MOUNT_MOUNTING ;
 int CEPH_SUB_FSMAP ;
 int CEPH_SUB_MDSMAP ;
 int ENOMEM ;
 struct ceph_fs_client* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PAGE_SHIFT ;
 int PTR_ERR (TYPE_1__*) ;
 int WQ_UNBOUND ;
 void* alloc_workqueue (char*,int ,int) ;
 int atomic_long_set (int *,int ) ;
 TYPE_1__* ceph_create_client (struct ceph_options*,struct ceph_fs_client*) ;
 int ceph_destroy_client (TYPE_1__*) ;
 int ceph_destroy_options (struct ceph_options*) ;
 int ceph_monc_want_map (int *,int ,int ,int) ;
 int ceph_set_opt (TYPE_1__*,int ) ;
 int destroy_mount_options (struct ceph_mount_options*) ;
 int destroy_workqueue (void*) ;
 int extra_mon_dispatch ;
 int kfree (struct ceph_fs_client*) ;
 struct ceph_fs_client* kzalloc (int,int ) ;
 int mempool_create_kmalloc_pool (int,size_t) ;

__attribute__((used)) static struct ceph_fs_client *create_fs_client(struct ceph_mount_options *fsopt,
     struct ceph_options *opt)
{
 struct ceph_fs_client *fsc;
 int page_count;
 size_t size;
 int err;

 fsc = kzalloc(sizeof(*fsc), GFP_KERNEL);
 if (!fsc) {
  err = -ENOMEM;
  goto fail;
 }

 fsc->client = ceph_create_client(opt, fsc);
 if (IS_ERR(fsc->client)) {
  err = PTR_ERR(fsc->client);
  goto fail;
 }
 opt = ((void*)0);

 fsc->client->extra_mon_dispatch = extra_mon_dispatch;
 ceph_set_opt(fsc->client, ABORT_ON_FULL);

 if (!fsopt->mds_namespace) {
  ceph_monc_want_map(&fsc->client->monc, CEPH_SUB_MDSMAP,
       0, 1);
 } else {
  ceph_monc_want_map(&fsc->client->monc, CEPH_SUB_FSMAP,
       0, 0);
 }

 fsc->mount_options = fsopt;

 fsc->sb = ((void*)0);
 fsc->mount_state = CEPH_MOUNT_MOUNTING;
 fsc->filp_gen = 1;

 atomic_long_set(&fsc->writeback_count, 0);

 err = -ENOMEM;




 fsc->inode_wq = alloc_workqueue("ceph-inode", WQ_UNBOUND, 0);
 if (!fsc->inode_wq)
  goto fail_client;
 fsc->cap_wq = alloc_workqueue("ceph-cap", 0, 1);
 if (!fsc->cap_wq)
  goto fail_inode_wq;


 err = -ENOMEM;
 page_count = fsc->mount_options->wsize >> PAGE_SHIFT;
 size = sizeof (struct page *) * (page_count ? page_count : 1);
 fsc->wb_pagevec_pool = mempool_create_kmalloc_pool(10, size);
 if (!fsc->wb_pagevec_pool)
  goto fail_cap_wq;

 return fsc;

fail_cap_wq:
 destroy_workqueue(fsc->cap_wq);
fail_inode_wq:
 destroy_workqueue(fsc->inode_wq);
fail_client:
 ceph_destroy_client(fsc->client);
fail:
 kfree(fsc);
 if (opt)
  ceph_destroy_options(opt);
 destroy_mount_options(fsopt);
 return ERR_PTR(err);
}
