
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int num; struct vring_packed_desc_event* driver; struct vring_packed_desc_event* device; struct vring_packed_desc_event* desc; } ;
struct TYPE_4__ {size_t ring_size_in_bytes; size_t event_size_in_bytes; int avail_wrap_counter; int used_wrap_counter; int avail_used_flags; struct vring_virtqueue* desc_state; scalar_t__ event_flags_shadow; TYPE_1__ vring; struct vring_virtqueue* desc_extra; scalar_t__ next_avail_idx; void* device_event_dma_addr; void* driver_event_dma_addr; void* ring_dma_addr; } ;
struct virtqueue {void (* callback ) (struct virtqueue*) ;char const* name; unsigned int num_free; unsigned int index; int list; struct virtio_device* vdev; } ;
struct vring_virtqueue {int we_own_ring; int (* notify ) (struct virtqueue*) ;int weak_barriers; int broken; int packed_ring; int in_use; int last_add_time_valid; int indirect; unsigned int next; TYPE_2__ packed; struct virtqueue vq; scalar_t__ free_head; scalar_t__ event; int use_dma_api; scalar_t__ num_added; scalar_t__ last_used_idx; } ;
struct vring_packed_desc_event {int flags; } ;
struct vring_packed_desc {int flags; } ;
struct vring_desc_state_packed {int dummy; } ;
struct vring_desc_extra_packed {int dummy; } ;
struct virtio_device {int vqs; } ;
typedef void* dma_addr_t ;


 int GFP_KERNEL ;
 int VIRTIO_F_ORDER_PLATFORM ;
 int VIRTIO_RING_F_EVENT_IDX ;
 int VIRTIO_RING_F_INDIRECT_DESC ;
 int VRING_PACKED_DESC_F_AVAIL ;
 scalar_t__ VRING_PACKED_EVENT_FLAG_DISABLE ;
 int __GFP_NOWARN ;
 int __GFP_ZERO ;
 int cpu_to_le16 (scalar_t__) ;
 int kfree (struct vring_virtqueue*) ;
 struct vring_virtqueue* kmalloc (int,int) ;
 void* kmalloc_array (unsigned int,int,int) ;
 int list_add_tail (int *,int *) ;
 int memset (struct vring_virtqueue*,int ,unsigned int) ;
 scalar_t__ virtio_has_feature (struct virtio_device*,int ) ;
 struct vring_packed_desc_event* vring_alloc_queue (struct virtio_device*,size_t,void**,int) ;
 int vring_free_queue (struct virtio_device*,size_t,struct vring_packed_desc_event*,void*) ;
 int vring_use_dma_api (struct virtio_device*) ;

__attribute__((used)) static struct virtqueue *vring_create_virtqueue_packed(
 unsigned int index,
 unsigned int num,
 unsigned int vring_align,
 struct virtio_device *vdev,
 bool weak_barriers,
 bool may_reduce_num,
 bool context,
 bool (*notify)(struct virtqueue *),
 void (*callback)(struct virtqueue *),
 const char *name)
{
 struct vring_virtqueue *vq;
 struct vring_packed_desc *ring;
 struct vring_packed_desc_event *driver, *device;
 dma_addr_t ring_dma_addr, driver_event_dma_addr, device_event_dma_addr;
 size_t ring_size_in_bytes, event_size_in_bytes;
 unsigned int i;

 ring_size_in_bytes = num * sizeof(struct vring_packed_desc);

 ring = vring_alloc_queue(vdev, ring_size_in_bytes,
     &ring_dma_addr,
     GFP_KERNEL|__GFP_NOWARN|__GFP_ZERO);
 if (!ring)
  goto err_ring;

 event_size_in_bytes = sizeof(struct vring_packed_desc_event);

 driver = vring_alloc_queue(vdev, event_size_in_bytes,
       &driver_event_dma_addr,
       GFP_KERNEL|__GFP_NOWARN|__GFP_ZERO);
 if (!driver)
  goto err_driver;

 device = vring_alloc_queue(vdev, event_size_in_bytes,
       &device_event_dma_addr,
       GFP_KERNEL|__GFP_NOWARN|__GFP_ZERO);
 if (!device)
  goto err_device;

 vq = kmalloc(sizeof(*vq), GFP_KERNEL);
 if (!vq)
  goto err_vq;

 vq->vq.callback = callback;
 vq->vq.vdev = vdev;
 vq->vq.name = name;
 vq->vq.num_free = num;
 vq->vq.index = index;
 vq->we_own_ring = 1;
 vq->notify = notify;
 vq->weak_barriers = weak_barriers;
 vq->broken = 0;
 vq->last_used_idx = 0;
 vq->num_added = 0;
 vq->packed_ring = 1;
 vq->use_dma_api = vring_use_dma_api(vdev);
 list_add_tail(&vq->vq.list, &vdev->vqs);





 vq->indirect = virtio_has_feature(vdev, VIRTIO_RING_F_INDIRECT_DESC) &&
  !context;
 vq->event = virtio_has_feature(vdev, VIRTIO_RING_F_EVENT_IDX);

 if (virtio_has_feature(vdev, VIRTIO_F_ORDER_PLATFORM))
  vq->weak_barriers = 0;

 vq->packed.ring_dma_addr = ring_dma_addr;
 vq->packed.driver_event_dma_addr = driver_event_dma_addr;
 vq->packed.device_event_dma_addr = device_event_dma_addr;

 vq->packed.ring_size_in_bytes = ring_size_in_bytes;
 vq->packed.event_size_in_bytes = event_size_in_bytes;

 vq->packed.vring.num = num;
 vq->packed.vring.desc = ring;
 vq->packed.vring.driver = driver;
 vq->packed.vring.device = device;

 vq->packed.next_avail_idx = 0;
 vq->packed.avail_wrap_counter = 1;
 vq->packed.used_wrap_counter = 1;
 vq->packed.event_flags_shadow = 0;
 vq->packed.avail_used_flags = 1 << VRING_PACKED_DESC_F_AVAIL;

 vq->packed.desc_state = kmalloc_array(num,
   sizeof(struct vring_desc_state_packed),
   GFP_KERNEL);
 if (!vq->packed.desc_state)
  goto err_desc_state;

 memset(vq->packed.desc_state, 0,
  num * sizeof(struct vring_desc_state_packed));


 vq->free_head = 0;
 for (i = 0; i < num-1; i++)
  vq->packed.desc_state[i].next = i + 1;

 vq->packed.desc_extra = kmalloc_array(num,
   sizeof(struct vring_desc_extra_packed),
   GFP_KERNEL);
 if (!vq->packed.desc_extra)
  goto err_desc_extra;

 memset(vq->packed.desc_extra, 0,
  num * sizeof(struct vring_desc_extra_packed));


 if (!callback) {
  vq->packed.event_flags_shadow = VRING_PACKED_EVENT_FLAG_DISABLE;
  vq->packed.vring.driver->flags =
   cpu_to_le16(vq->packed.event_flags_shadow);
 }

 return &vq->vq;

err_desc_extra:
 kfree(vq->packed.desc_state);
err_desc_state:
 kfree(vq);
err_vq:
 vring_free_queue(vdev, event_size_in_bytes, device, ring_dma_addr);
err_device:
 vring_free_queue(vdev, event_size_in_bytes, driver, ring_dma_addr);
err_driver:
 vring_free_queue(vdev, ring_size_in_bytes, ring, ring_dma_addr);
err_ring:
 return ((void*)0);
}
