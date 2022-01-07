
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct comp_channel* private_data; } ;
struct comp_channel {int io_mutex; int fifo; int dev; TYPE_1__* cfg; int wq; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {scalar_t__ direction; } ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 scalar_t__ MOST_CH_RX ;
 scalar_t__ ch_has_mbo (struct comp_channel*) ;
 int kfifo_is_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t comp_poll(struct file *filp, poll_table *wait)
{
 struct comp_channel *c = filp->private_data;
 __poll_t mask = 0;

 poll_wait(filp, &c->wq, wait);

 mutex_lock(&c->io_mutex);
 if (c->cfg->direction == MOST_CH_RX) {
  if (!c->dev || !kfifo_is_empty(&c->fifo))
   mask |= EPOLLIN | EPOLLRDNORM;
 } else {
  if (!c->dev || !kfifo_is_empty(&c->fifo) || ch_has_mbo(c))
   mask |= EPOLLOUT | EPOLLWRNORM;
 }
 mutex_unlock(&c->io_mutex);
 return mask;
}
