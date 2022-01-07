
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vmlogrdr_priv_t {int iucv_path_severed; int priv_lock; scalar_t__ connection_established; int * path; } ;
struct iucv_path {struct vmlogrdr_priv_t* private; } ;


 int conn_wait_queue ;
 int iucv_path_sever (struct iucv_path*,int *) ;
 int kfree (struct iucv_path*) ;
 int pr_err (char*,int ) ;
 int read_wait_queue ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void vmlogrdr_iucv_path_severed(struct iucv_path *path, u8 *ipuser)
{
 struct vmlogrdr_priv_t * logptr = path->private;
 u8 reason = (u8) ipuser[8];

 pr_err("vmlogrdr: connection severed with reason %i\n", reason);

 iucv_path_sever(path, ((void*)0));
 kfree(path);
 logptr->path = ((void*)0);

 spin_lock(&logptr->priv_lock);
 logptr->connection_established = 0;
 logptr->iucv_path_severed = 1;
 spin_unlock(&logptr->priv_lock);

 wake_up(&conn_wait_queue);

 wake_up_interruptible(&read_wait_queue);
}
