
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mon_private {int iucv_connected; } ;
struct iucv_path {struct mon_private* private; } ;


 int atomic_set (int *,int) ;
 int mon_conn_wait_queue ;
 int wake_up (int *) ;

__attribute__((used)) static void mon_iucv_path_complete(struct iucv_path *path, u8 *ipuser)
{
 struct mon_private *monpriv = path->private;

 atomic_set(&monpriv->iucv_connected, 1);
 wake_up(&mon_conn_wait_queue);
}
