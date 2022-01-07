
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_desc {int dummy; } ;
struct mlxbf_tmfifo_vring {scalar_t__ vdev_id; struct vring_desc* desc; struct vring_desc* desc_head; } ;


 scalar_t__ VIRTIO_ID_NET ;
 struct vring_desc* mlxbf_tmfifo_get_next_desc (struct mlxbf_tmfifo_vring*) ;
 int mlxbf_tmfifo_init_net_desc (struct mlxbf_tmfifo_vring*,struct vring_desc*,int) ;

__attribute__((used)) static struct vring_desc *
mlxbf_tmfifo_get_next_pkt(struct mlxbf_tmfifo_vring *vring, bool is_rx)
{
 struct vring_desc *desc;

 desc = mlxbf_tmfifo_get_next_desc(vring);
 if (desc && is_rx && vring->vdev_id == VIRTIO_ID_NET)
  mlxbf_tmfifo_init_net_desc(vring, desc, is_rx);

 vring->desc_head = desc;
 vring->desc = desc;

 return desc;
}
