
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sock_mapping {scalar_t__ active_socket; } ;
struct pvcalls_bedata {int dummy; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {int dev; } ;


 int EPOLLNVAL ;
 scalar_t__ IS_ERR (struct sock_mapping*) ;
 struct pvcalls_bedata* dev_get_drvdata (int *) ;
 struct sock_mapping* pvcalls_enter_sock (struct socket*) ;
 int pvcalls_exit_sock (struct socket*) ;
 TYPE_1__* pvcalls_front_dev ;
 int pvcalls_front_poll_active (struct file*,struct pvcalls_bedata*,struct sock_mapping*,int *) ;
 int pvcalls_front_poll_passive (struct file*,struct pvcalls_bedata*,struct sock_mapping*,int *) ;

__poll_t pvcalls_front_poll(struct file *file, struct socket *sock,
          poll_table *wait)
{
 struct pvcalls_bedata *bedata;
 struct sock_mapping *map;
 __poll_t ret;

 map = pvcalls_enter_sock(sock);
 if (IS_ERR(map))
  return EPOLLNVAL;
 bedata = dev_get_drvdata(&pvcalls_front_dev->dev);

 if (map->active_socket)
  ret = pvcalls_front_poll_active(file, bedata, map, wait);
 else
  ret = pvcalls_front_poll_passive(file, bedata, map, wait);
 pvcalls_exit_sock(sock);
 return ret;
}
