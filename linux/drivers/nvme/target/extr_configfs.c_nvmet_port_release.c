
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_port {struct nvmet_port* ana_state; int global_entry; } ;
struct config_item {int dummy; } ;


 int kfree (struct nvmet_port*) ;
 int list_del (int *) ;
 struct nvmet_port* to_nvmet_port (struct config_item*) ;

__attribute__((used)) static void nvmet_port_release(struct config_item *item)
{
 struct nvmet_port *port = to_nvmet_port(item);

 list_del(&port->global_entry);

 kfree(port->ana_state);
 kfree(port);
}
