
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifs_credits {int dummy; } ;
struct TCP_Server_Info {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* add_credits ) (struct TCP_Server_Info*,struct cifs_credits const*,int const) ;} ;


 int stub1 (struct TCP_Server_Info*,struct cifs_credits const*,int const) ;

__attribute__((used)) static inline void
add_credits(struct TCP_Server_Info *server, const struct cifs_credits *credits,
     const int optype)
{
 server->ops->add_credits(server, credits, optype);
}
