
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vring {int dummy; } ;
struct virtqueue {int dummy; } ;
struct TYPE_3__ {struct vring const vring; } ;
struct TYPE_4__ {TYPE_1__ split; } ;


 TYPE_2__* to_vvq (struct virtqueue*) ;

const struct vring *virtqueue_get_vring(struct virtqueue *vq)
{
 return &to_vvq(vq)->split.vring;
}
