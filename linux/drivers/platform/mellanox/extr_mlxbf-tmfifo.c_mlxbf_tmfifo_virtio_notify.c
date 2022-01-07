
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {struct mlxbf_tmfifo_vring* priv; } ;
struct mlxbf_tmfifo_vring {int index; size_t vdev_id; struct mlxbf_tmfifo* fifo; } ;
struct mlxbf_tmfifo_vdev {int dummy; } ;
struct mlxbf_tmfifo {int work; int pend_events; int spin_lock; struct mlxbf_tmfifo_vdev** vdev; } ;


 int BIT (int ) ;
 int MLXBF_TM_RX_HWM_IRQ ;
 int MLXBF_TM_TX_LWM_IRQ ;
 size_t VIRTIO_ID_CONSOLE ;
 int mlxbf_tmfifo_console_output (struct mlxbf_tmfifo_vdev*,struct mlxbf_tmfifo_vring*) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static bool mlxbf_tmfifo_virtio_notify(struct virtqueue *vq)
{
 struct mlxbf_tmfifo_vring *vring = vq->priv;
 struct mlxbf_tmfifo_vdev *tm_vdev;
 struct mlxbf_tmfifo *fifo;
 unsigned long flags;

 fifo = vring->fifo;





 if (vring->index & BIT(0)) {






  if (vring->vdev_id == VIRTIO_ID_CONSOLE) {
   spin_lock_irqsave(&fifo->spin_lock, flags);
   tm_vdev = fifo->vdev[VIRTIO_ID_CONSOLE];
   mlxbf_tmfifo_console_output(tm_vdev, vring);
   spin_unlock_irqrestore(&fifo->spin_lock, flags);
  } else if (test_and_set_bit(MLXBF_TM_TX_LWM_IRQ,
         &fifo->pend_events)) {
   return 1;
  }
 } else {
  if (test_and_set_bit(MLXBF_TM_RX_HWM_IRQ, &fifo->pend_events))
   return 1;
 }

 schedule_work(&fifo->work);

 return 1;
}
