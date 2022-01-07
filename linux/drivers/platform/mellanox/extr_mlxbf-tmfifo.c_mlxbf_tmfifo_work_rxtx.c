
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxbf_tmfifo_vring {scalar_t__ vq; } ;
struct mlxbf_tmfifo_vdev {struct mlxbf_tmfifo_vring* vrings; } ;
struct mlxbf_tmfifo {struct mlxbf_tmfifo_vdev** vdev; TYPE_1__* irq_info; int pend_events; } ;
struct TYPE_2__ {int irq; } ;


 int MLXBF_TMFIFO_VDEV_MAX ;
 int mlxbf_tmfifo_rxtx (struct mlxbf_tmfifo_vring*,int) ;
 int test_and_clear_bit (int,int *) ;

__attribute__((used)) static void mlxbf_tmfifo_work_rxtx(struct mlxbf_tmfifo *fifo, int queue_id,
       int irq_id, bool is_rx)
{
 struct mlxbf_tmfifo_vdev *tm_vdev;
 struct mlxbf_tmfifo_vring *vring;
 int i;

 if (!test_and_clear_bit(irq_id, &fifo->pend_events) ||
     !fifo->irq_info[irq_id].irq)
  return;

 for (i = 0; i < MLXBF_TMFIFO_VDEV_MAX; i++) {
  tm_vdev = fifo->vdev[i];
  if (tm_vdev) {
   vring = &tm_vdev->vrings[queue_id];
   if (vring->vq)
    mlxbf_tmfifo_rxtx(vring, is_rx);
  }
 }
}
