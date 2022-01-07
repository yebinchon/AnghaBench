
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mid_q_entry {int optype; struct TCP_Server_Info* server; } ;
struct cifs_credits {int instance; int value; } ;
struct TCP_Server_Info {int reconnect_instance; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_credits ) (struct mid_q_entry*) ;} ;


 int add_credits (struct TCP_Server_Info*,struct cifs_credits*,int ) ;
 int stub1 (struct mid_q_entry*) ;

__attribute__((used)) static void
cifs_compound_callback(struct mid_q_entry *mid)
{
 struct TCP_Server_Info *server = mid->server;
 struct cifs_credits credits;

 credits.value = server->ops->get_credits(mid);
 credits.instance = server->reconnect_instance;

 add_credits(server, &credits, mid->optype);
}
