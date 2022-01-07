
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct vring_desc {int dummy; } ;
struct virtio_net_hdr {int dummy; } ;
struct virtio_net_config {scalar_t__ mtu; } ;
struct mlxbf_tmfifo_vring {int vdev_id; int cur_len; scalar_t__ pkt_len; scalar_t__ rem_len; struct vring_desc* desc; struct mlxbf_tmfifo* fifo; } ;
struct TYPE_2__ {struct virtio_net_config net; } ;
struct mlxbf_tmfifo_vdev {struct mlxbf_tmfifo_vring* vrings; TYPE_1__ config; } ;
struct mlxbf_tmfifo_msg_hdr {scalar_t__ len; void* type; } ;
struct mlxbf_tmfifo {struct mlxbf_tmfifo_vring** vring; scalar_t__ tx_base; struct mlxbf_tmfifo_vdev** vdev; scalar_t__ rx_base; } ;


 scalar_t__ MLXBF_TMFIFO_NET_L2_OVERHEAD ;
 scalar_t__ MLXBF_TMFIFO_RX_DATA ;
 scalar_t__ MLXBF_TMFIFO_TX_DATA ;
 size_t MLXBF_TMFIFO_VRING_RX ;
 void* VIRTIO_ID_CONSOLE ;
 void* VIRTIO_ID_NET ;
 scalar_t__ htons (scalar_t__) ;
 scalar_t__ mlxbf_tmfifo_get_pkt_len (struct mlxbf_tmfifo_vring*,struct vring_desc*) ;
 scalar_t__ ntohs (scalar_t__) ;
 int readq (scalar_t__) ;
 int writeq (int ,scalar_t__) ;

__attribute__((used)) static void mlxbf_tmfifo_rxtx_header(struct mlxbf_tmfifo_vring *vring,
         struct vring_desc *desc,
         bool is_rx, bool *vring_change)
{
 struct mlxbf_tmfifo *fifo = vring->fifo;
 struct virtio_net_config *config;
 struct mlxbf_tmfifo_msg_hdr hdr;
 int vdev_id, hdr_len;


 if (is_rx) {

  *(u64 *)&hdr = readq(fifo->rx_base + MLXBF_TMFIFO_RX_DATA);


  if (hdr.len == 0)
   return;


  if (hdr.type == VIRTIO_ID_NET) {
   vdev_id = VIRTIO_ID_NET;
   hdr_len = sizeof(struct virtio_net_hdr);
   config = &fifo->vdev[vdev_id]->config.net;
   if (ntohs(hdr.len) > config->mtu +
       MLXBF_TMFIFO_NET_L2_OVERHEAD)
    return;
  } else {
   vdev_id = VIRTIO_ID_CONSOLE;
   hdr_len = 0;
  }





  if (vdev_id != vring->vdev_id) {
   struct mlxbf_tmfifo_vdev *tm_dev2 = fifo->vdev[vdev_id];

   if (!tm_dev2)
    return;
   vring->desc = desc;
   vring = &tm_dev2->vrings[MLXBF_TMFIFO_VRING_RX];
   *vring_change = 1;
  }
  vring->pkt_len = ntohs(hdr.len) + hdr_len;
 } else {

  hdr_len = (vring->vdev_id == VIRTIO_ID_NET) ?
      sizeof(struct virtio_net_hdr) : 0;
  vring->pkt_len = mlxbf_tmfifo_get_pkt_len(vring, desc);
  hdr.type = (vring->vdev_id == VIRTIO_ID_NET) ?
       VIRTIO_ID_NET : VIRTIO_ID_CONSOLE;
  hdr.len = htons(vring->pkt_len - hdr_len);
  writeq(*(u64 *)&hdr, fifo->tx_base + MLXBF_TMFIFO_TX_DATA);
 }

 vring->cur_len = hdr_len;
 vring->rem_len = vring->pkt_len;
 fifo->vring[is_rx] = vring;
}
