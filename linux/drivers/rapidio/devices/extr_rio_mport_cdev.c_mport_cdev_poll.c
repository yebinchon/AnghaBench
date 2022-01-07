
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mport_cdev_priv {int event_fifo; int event_rx_wait; } ;
struct file {struct mport_cdev_priv* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 scalar_t__ kfifo_len (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t mport_cdev_poll(struct file *filp, poll_table *wait)
{
 struct mport_cdev_priv *priv = filp->private_data;

 poll_wait(filp, &priv->event_rx_wait, wait);
 if (kfifo_len(&priv->event_fifo))
  return EPOLLIN | EPOLLRDNORM;

 return 0;
}
