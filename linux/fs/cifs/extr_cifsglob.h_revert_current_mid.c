
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TCP_Server_Info {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* revert_current_mid ) (struct TCP_Server_Info*,unsigned int const) ;} ;


 int stub1 (struct TCP_Server_Info*,unsigned int const) ;

__attribute__((used)) static inline void
revert_current_mid(struct TCP_Server_Info *server, const unsigned int val)
{
 if (server->ops->revert_current_mid)
  server->ops->revert_current_mid(server, val);
}
