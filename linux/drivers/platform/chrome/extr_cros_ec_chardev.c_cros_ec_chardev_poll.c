
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct chardev_priv* private_data; } ;
struct chardev_priv {int events; int wait_event; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 scalar_t__ list_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t cros_ec_chardev_poll(struct file *filp, poll_table *wait)
{
 struct chardev_priv *priv = filp->private_data;

 poll_wait(filp, &priv->wait_event, wait);

 if (list_empty(&priv->events))
  return 0;

 return EPOLLIN | EPOLLRDNORM;
}
