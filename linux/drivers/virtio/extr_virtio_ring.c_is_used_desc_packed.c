
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_5__ {TYPE_1__* desc; } ;
struct TYPE_6__ {TYPE_2__ vring; } ;
struct vring_virtqueue {TYPE_3__ packed; } ;
struct TYPE_4__ {int flags; } ;


 int VRING_PACKED_DESC_F_AVAIL ;
 int VRING_PACKED_DESC_F_USED ;
 size_t le16_to_cpu (int ) ;

__attribute__((used)) static inline bool is_used_desc_packed(const struct vring_virtqueue *vq,
           u16 idx, bool used_wrap_counter)
{
 bool avail, used;
 u16 flags;

 flags = le16_to_cpu(vq->packed.vring.desc[idx].flags);
 avail = !!(flags & (1 << VRING_PACKED_DESC_F_AVAIL));
 used = !!(flags & (1 << VRING_PACKED_DESC_F_USED));

 return avail == used && used == used_wrap_counter;
}
