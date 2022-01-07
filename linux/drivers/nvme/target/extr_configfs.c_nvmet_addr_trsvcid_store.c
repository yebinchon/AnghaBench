
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int trsvcid; } ;
struct nvmet_port {TYPE_1__ disc_addr; scalar_t__ enabled; } ;
struct config_item {int dummy; } ;
typedef size_t ssize_t ;


 size_t EACCES ;
 size_t EINVAL ;
 size_t NVMF_TRSVCID_SIZE ;
 int pr_err (char*,...) ;
 int sscanf (char const*,char*,int ) ;
 struct nvmet_port* to_nvmet_port (struct config_item*) ;

__attribute__((used)) static ssize_t nvmet_addr_trsvcid_store(struct config_item *item,
  const char *page, size_t count)
{
 struct nvmet_port *port = to_nvmet_port(item);

 if (count > NVMF_TRSVCID_SIZE) {
  pr_err("Invalid value '%s' for trsvcid\n", page);
  return -EINVAL;
 }
 if (port->enabled) {
  pr_err("Cannot modify address while enabled\n");
  pr_err("Disable the address before modifying\n");
  return -EACCES;
 }

 if (sscanf(page, "%s\n", port->disc_addr.trsvcid) != 1)
  return -EINVAL;
 return count;
}
