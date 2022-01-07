
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct virtio_balloon {TYPE_2__* vdev; scalar_t__ num_pages; } ;
struct TYPE_5__ {TYPE_1__* config; } ;
struct TYPE_4__ {int (* del_vqs ) (TYPE_2__*) ;int (* reset ) (TYPE_2__*) ;} ;


 int leak_balloon (struct virtio_balloon*,scalar_t__) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;
 int update_balloon_size (struct virtio_balloon*) ;

__attribute__((used)) static void remove_common(struct virtio_balloon *vb)
{

 while (vb->num_pages)
  leak_balloon(vb, vb->num_pages);
 update_balloon_size(vb);


 vb->vdev->config->reset(vb->vdev);

 vb->vdev->config->del_vqs(vb->vdev);
}
