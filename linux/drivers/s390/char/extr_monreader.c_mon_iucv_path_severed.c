
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mon_private {int iucv_severed; } ;
struct iucv_path {struct mon_private* private; } ;


 int atomic_set (int *,int) ;
 int iucv_path_sever (struct iucv_path*,int *) ;
 int mon_conn_wait_queue ;
 int mon_read_wait_queue ;
 int pr_err (char*,int ) ;
 int wake_up (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void mon_iucv_path_severed(struct iucv_path *path, u8 *ipuser)
{
 struct mon_private *monpriv = path->private;

 pr_err("z/VM *MONITOR system service disconnected with rc=%i\n",
        ipuser[0]);
 iucv_path_sever(path, ((void*)0));
 atomic_set(&monpriv->iucv_severed, 1);
 wake_up(&mon_conn_wait_queue);
 wake_up_interruptible(&mon_read_wait_queue);
}
