
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_balloon {int report_free_page_work; int balloon_wq; int config_read_bitmap; int vdev; } ;


 int VIRTIO_BALLOON_CONFIG_READ_CMD_ID ;
 int VIRTIO_BALLOON_F_FREE_PAGE_HINT ;
 int queue_work (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int virtio_has_feature (int ,int ) ;

__attribute__((used)) static void virtio_balloon_queue_free_page_work(struct virtio_balloon *vb)
{
 if (!virtio_has_feature(vb->vdev, VIRTIO_BALLOON_F_FREE_PAGE_HINT))
  return;


 if (test_and_set_bit(VIRTIO_BALLOON_CONFIG_READ_CMD_ID,
        &vb->config_read_bitmap))
  return;

 queue_work(vb->balloon_wq, &vb->report_free_page_work);
}
