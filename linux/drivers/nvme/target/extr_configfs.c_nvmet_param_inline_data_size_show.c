
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_port {int inline_data_size; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 struct nvmet_port* to_nvmet_port (struct config_item*) ;

__attribute__((used)) static ssize_t nvmet_param_inline_data_size_show(struct config_item *item,
  char *page)
{
 struct nvmet_port *port = to_nvmet_port(item);

 return snprintf(page, PAGE_SIZE, "%d\n", port->inline_data_size);
}
