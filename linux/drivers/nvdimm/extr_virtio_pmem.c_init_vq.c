
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_pmem {int req_list; int pmem_lock; int req_vq; int vdev; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int spin_lock_init (int *) ;
 int virtio_find_single_vq (int ,int ,char*) ;
 int virtio_pmem_host_ack ;

__attribute__((used)) static int init_vq(struct virtio_pmem *vpmem)
{

 vpmem->req_vq = virtio_find_single_vq(vpmem->vdev,
     virtio_pmem_host_ack, "flush_queue");
 if (IS_ERR(vpmem->req_vq))
  return PTR_ERR(vpmem->req_vq);

 spin_lock_init(&vpmem->pmem_lock);
 INIT_LIST_HEAD(&vpmem->req_list);

 return 0;
}
