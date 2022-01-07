
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; struct module* owner; int * bus; } ;
struct ntb_client {TYPE_1__ drv; int ops; } ;
struct module {int dummy; } ;


 int EINVAL ;
 int driver_register (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int ntb_bus ;
 int ntb_client_ops_is_valid (int *) ;

int __ntb_register_client(struct ntb_client *client, struct module *mod,
     const char *mod_name)
{
 if (!client)
  return -EINVAL;
 if (!ntb_client_ops_is_valid(&client->ops))
  return -EINVAL;

 memset(&client->drv, 0, sizeof(client->drv));
 client->drv.bus = &ntb_bus;
 client->drv.name = mod_name;
 client->drv.owner = mod;

 return driver_register(&client->drv);
}
