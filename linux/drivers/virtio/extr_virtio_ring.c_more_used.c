
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_virtqueue {scalar_t__ packed_ring; } ;


 int more_used_packed (struct vring_virtqueue const*) ;
 int more_used_split (struct vring_virtqueue const*) ;

__attribute__((used)) static inline bool more_used(const struct vring_virtqueue *vq)
{
 return vq->packed_ring ? more_used_packed(vq) : more_used_split(vq);
}
