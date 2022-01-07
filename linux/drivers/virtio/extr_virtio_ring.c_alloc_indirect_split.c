
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_desc {int next; } ;
struct virtqueue {int vdev; } ;
typedef int gfp_t ;


 int __GFP_HIGHMEM ;
 int cpu_to_virtio16 (int ,unsigned int) ;
 struct vring_desc* kmalloc_array (unsigned int,int,int ) ;

__attribute__((used)) static struct vring_desc *alloc_indirect_split(struct virtqueue *_vq,
            unsigned int total_sg,
            gfp_t gfp)
{
 struct vring_desc *desc;
 unsigned int i;






 gfp &= ~__GFP_HIGHMEM;

 desc = kmalloc_array(total_sg, sizeof(struct vring_desc), gfp);
 if (!desc)
  return ((void*)0);

 for (i = 0; i < total_sg; i++)
  desc[i].next = cpu_to_virtio16(_vq->vdev, i + 1);
 return desc;
}
