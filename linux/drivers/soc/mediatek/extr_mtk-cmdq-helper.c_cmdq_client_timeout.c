
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct cmdq_client {TYPE_1__ client; } ;


 struct cmdq_client* client ;
 int dev_err (int ,char*) ;
 struct cmdq_client* from_timer (int ,struct timer_list*,int ) ;
 int timer ;

__attribute__((used)) static void cmdq_client_timeout(struct timer_list *t)
{
 struct cmdq_client *client = from_timer(client, t, timer);

 dev_err(client->client.dev, "cmdq timeout!\n");
}
