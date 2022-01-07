
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int portid; } ;
struct nvmet_port {TYPE_1__ disc_addr; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int le16_to_cpu (int ) ;
 int snprintf (char*,int ,char*,int) ;
 struct nvmet_port* to_nvmet_port (struct config_item*) ;

__attribute__((used)) static ssize_t nvmet_addr_portid_show(struct config_item *item,
  char *page)
{
 struct nvmet_port *port = to_nvmet_port(item);

 return snprintf(page, PAGE_SIZE, "%d\n",
   le16_to_cpu(port->disc_addr.portid));
}
