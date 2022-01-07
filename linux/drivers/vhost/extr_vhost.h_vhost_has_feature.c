
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {unsigned long long acked_features; } ;



__attribute__((used)) static inline bool vhost_has_feature(struct vhost_virtqueue *vq, int bit)
{
 return vq->acked_features & (1ULL << bit);
}
