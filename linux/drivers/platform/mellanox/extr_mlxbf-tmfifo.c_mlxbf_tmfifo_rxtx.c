
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxbf_tmfifo_vring {int vdev_id; struct mlxbf_tmfifo* fifo; } ;
struct mlxbf_tmfifo {struct mlxbf_tmfifo_vring** vring; int * vdev; } ;


 int VIRTIO_ID_CONSOLE ;
 int VIRTIO_ID_NET ;
 scalar_t__ WARN_ON (int) ;
 int mlxbf_tmfifo_console_tx (struct mlxbf_tmfifo*,int) ;
 int mlxbf_tmfifo_get_rx_avail (struct mlxbf_tmfifo*) ;
 int mlxbf_tmfifo_get_tx_avail (struct mlxbf_tmfifo*,int) ;
 int mlxbf_tmfifo_rxtx_one_desc (struct mlxbf_tmfifo_vring*,int,int*) ;

__attribute__((used)) static void mlxbf_tmfifo_rxtx(struct mlxbf_tmfifo_vring *vring, bool is_rx)
{
 int avail = 0, devid = vring->vdev_id;
 struct mlxbf_tmfifo *fifo;
 bool more;

 fifo = vring->fifo;


 if (!fifo->vdev[devid])
  return;


 if (fifo->vring[is_rx] && fifo->vring[is_rx] != vring)
  return;


 if (WARN_ON(devid != VIRTIO_ID_NET && devid != VIRTIO_ID_CONSOLE))
  return;

 do {

  if (avail == 0) {
   if (is_rx)
    avail = mlxbf_tmfifo_get_rx_avail(fifo);
   else
    avail = mlxbf_tmfifo_get_tx_avail(fifo, devid);
   if (avail <= 0)
    break;
  }


  if (!is_rx && devid == VIRTIO_ID_CONSOLE) {
   mlxbf_tmfifo_console_tx(fifo, avail);
   break;
  }


  more = mlxbf_tmfifo_rxtx_one_desc(vring, is_rx, &avail);
 } while (more);
}
