
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {int dummy; } ;


 int VIRTIO_BALLOON_F_PAGE_POISON ;
 int VIRTIO_F_IOMMU_PLATFORM ;
 int __virtio_clear_bit (struct virtio_device*,int ) ;
 int page_poisoning_enabled () ;

__attribute__((used)) static int virtballoon_validate(struct virtio_device *vdev)
{
 if (!page_poisoning_enabled())
  __virtio_clear_bit(vdev, VIRTIO_BALLOON_F_PAGE_POISON);

 __virtio_clear_bit(vdev, VIRTIO_F_IOMMU_PLATFORM);
 return 0;
}
