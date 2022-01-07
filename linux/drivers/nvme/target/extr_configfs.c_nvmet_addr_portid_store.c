
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int portid; } ;
struct nvmet_port {TYPE_1__ disc_addr; scalar_t__ enabled; } ;
struct config_item {int dummy; } ;
typedef size_t ssize_t ;


 size_t EACCES ;
 size_t EINVAL ;
 int cpu_to_le16 (int ) ;
 scalar_t__ kstrtou16 (char const*,int ,int *) ;
 int pr_err (char*,...) ;
 struct nvmet_port* to_nvmet_port (struct config_item*) ;

__attribute__((used)) static ssize_t nvmet_addr_portid_store(struct config_item *item,
  const char *page, size_t count)
{
 struct nvmet_port *port = to_nvmet_port(item);
 u16 portid = 0;

 if (kstrtou16(page, 0, &portid)) {
  pr_err("Invalid value '%s' for portid\n", page);
  return -EINVAL;
 }

 if (port->enabled) {
  pr_err("Cannot modify address while enabled\n");
  pr_err("Disable the address before modifying\n");
  return -EACCES;
 }
 port->disc_addr.portid = cpu_to_le16(portid);
 return count;
}
