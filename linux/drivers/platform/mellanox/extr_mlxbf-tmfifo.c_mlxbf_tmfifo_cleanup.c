
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxbf_tmfifo {int is_ready; int work; int timer; } ;


 int MLXBF_TMFIFO_VDEV_MAX ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int mlxbf_tmfifo_delete_vdev (struct mlxbf_tmfifo*,int) ;
 int mlxbf_tmfifo_disable_irqs (struct mlxbf_tmfifo*) ;

__attribute__((used)) static void mlxbf_tmfifo_cleanup(struct mlxbf_tmfifo *fifo)
{
 int i;

 fifo->is_ready = 0;
 del_timer_sync(&fifo->timer);
 mlxbf_tmfifo_disable_irqs(fifo);
 cancel_work_sync(&fifo->work);
 for (i = 0; i < MLXBF_TMFIFO_VDEV_MAX; i++)
  mlxbf_tmfifo_delete_vdev(fifo, i);
}
