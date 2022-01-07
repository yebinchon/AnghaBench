
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_credits {scalar_t__ value; } ;
struct TCP_Server_Info {int request_q; int req_lock; int in_flight; int credits; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void
cifs_add_credits(struct TCP_Server_Info *server,
   const struct cifs_credits *credits, const int optype)
{
 spin_lock(&server->req_lock);
 server->credits += credits->value;
 server->in_flight--;
 spin_unlock(&server->req_lock);
 wake_up(&server->request_q);
}
