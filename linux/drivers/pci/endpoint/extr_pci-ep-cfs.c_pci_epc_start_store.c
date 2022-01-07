
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epc_group {int start; struct pci_epc* epc; } ;
struct pci_epc {int dev; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int dev_err (int *,char*) ;
 int kstrtobool (char const*,int*) ;
 int pci_epc_start (struct pci_epc*) ;
 int pci_epc_stop (struct pci_epc*) ;
 struct pci_epc_group* to_pci_epc_group (struct config_item*) ;

__attribute__((used)) static ssize_t pci_epc_start_store(struct config_item *item, const char *page,
       size_t len)
{
 int ret;
 bool start;
 struct pci_epc *epc;
 struct pci_epc_group *epc_group = to_pci_epc_group(item);

 epc = epc_group->epc;

 ret = kstrtobool(page, &start);
 if (ret)
  return ret;

 if (!start) {
  pci_epc_stop(epc);
  return len;
 }

 ret = pci_epc_start(epc);
 if (ret) {
  dev_err(&epc->dev, "failed to start endpoint controller\n");
  return -EINVAL;
 }

 epc_group->start = start;

 return len;
}
