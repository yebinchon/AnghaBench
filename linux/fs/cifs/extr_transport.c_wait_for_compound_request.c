
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TCP_Server_Info {int in_flight; int req_lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int* (* get_credits_field ) (struct TCP_Server_Info*,int const) ;} ;


 int const CIFS_OP_MASK ;
 int ENOTSUPP ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int* stub1 (struct TCP_Server_Info*,int const) ;
 int wait_for_free_credits (struct TCP_Server_Info*,int,int,int const,unsigned int*) ;

__attribute__((used)) static int
wait_for_compound_request(struct TCP_Server_Info *server, int num,
     const int flags, unsigned int *instance)
{
 int *credits;

 credits = server->ops->get_credits_field(server, flags & CIFS_OP_MASK);

 spin_lock(&server->req_lock);
 if (*credits < num) {




  if (server->in_flight < num - *credits) {
   spin_unlock(&server->req_lock);
   return -ENOTSUPP;
  }
 }
 spin_unlock(&server->req_lock);

 return wait_for_free_credits(server, num, 60000, flags,
         instance);
}
