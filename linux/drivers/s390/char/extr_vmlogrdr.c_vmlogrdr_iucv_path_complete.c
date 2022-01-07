
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vmlogrdr_priv_t {int connection_established; int priv_lock; } ;
struct iucv_path {struct vmlogrdr_priv_t* private; } ;


 int conn_wait_queue ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void vmlogrdr_iucv_path_complete(struct iucv_path *path, u8 *ipuser)
{
 struct vmlogrdr_priv_t * logptr = path->private;

 spin_lock(&logptr->priv_lock);
 logptr->connection_established = 1;
 spin_unlock(&logptr->priv_lock);
 wake_up(&conn_wait_queue);
}
