
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int used_wrap_counter; } ;
struct vring_virtqueue {TYPE_1__ packed; int last_used_idx; } ;


 int is_used_desc_packed (struct vring_virtqueue const*,int ,int ) ;

__attribute__((used)) static inline bool more_used_packed(const struct vring_virtqueue *vq)
{
 return is_used_desc_packed(vq, vq->last_used_idx,
   vq->packed.used_wrap_counter);
}
