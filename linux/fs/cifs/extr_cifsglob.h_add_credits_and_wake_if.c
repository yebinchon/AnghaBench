
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifs_credits {scalar_t__ value; } ;
struct TCP_Server_Info {int request_q; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* add_credits ) (struct TCP_Server_Info*,struct cifs_credits const*,int const) ;} ;


 int stub1 (struct TCP_Server_Info*,struct cifs_credits const*,int const) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void
add_credits_and_wake_if(struct TCP_Server_Info *server,
   const struct cifs_credits *credits, const int optype)
{
 if (credits->value) {
  server->ops->add_credits(server, credits, optype);
  wake_up(&server->request_q);
 }
}
