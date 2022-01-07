
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifs_credits {int dummy; } ;
struct TCP_Server_Info {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* adjust_credits ) (struct TCP_Server_Info*,struct cifs_credits*,unsigned int const) ;} ;


 int stub1 (struct TCP_Server_Info*,struct cifs_credits*,unsigned int const) ;

__attribute__((used)) static inline int
adjust_credits(struct TCP_Server_Info *server, struct cifs_credits *credits,
        const unsigned int payload_size)
{
 return server->ops->adjust_credits ?
  server->ops->adjust_credits(server, credits, payload_size) : 0;
}
