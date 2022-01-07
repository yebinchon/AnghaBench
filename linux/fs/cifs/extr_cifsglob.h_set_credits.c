
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TCP_Server_Info {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_credits ) (struct TCP_Server_Info*,int const) ;} ;


 int stub1 (struct TCP_Server_Info*,int const) ;

__attribute__((used)) static inline void
set_credits(struct TCP_Server_Info *server, const int val)
{
 server->ops->set_credits(server, val);
}
