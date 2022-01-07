
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int devfn; int dev; int device; int vendor; TYPE_1__* bus; } ;
struct aer_err_info {int status; size_t severity; int mask; int id; int error_dev_num; int tlp; scalar_t__ tlp_header_valid; } ;
struct TYPE_2__ {int number; } ;


 int AER_GET_AGENT (size_t,int) ;
 int AER_GET_LAYER_ERROR (size_t,int) ;
 int __aer_print_error (struct pci_dev*,struct aer_err_info*) ;
 int __print_tlp_header (struct pci_dev*,int *) ;
 int * aer_agent_string ;
 int * aer_error_layer ;
 int * aer_error_severity_string ;
 int dev_name (int *) ;
 int pci_err (struct pci_dev*,char*,...) ;
 int trace_aer_event (int ,int,size_t,scalar_t__,int *) ;

void aer_print_error(struct pci_dev *dev, struct aer_err_info *info)
{
 int layer, agent;
 int id = ((dev->bus->number << 8) | dev->devfn);

 if (!info->status) {
  pci_err(dev, "PCIe Bus Error: severity=%s, type=Inaccessible, (Unregistered Agent ID)\n",
   aer_error_severity_string[info->severity]);
  goto out;
 }

 layer = AER_GET_LAYER_ERROR(info->severity, info->status);
 agent = AER_GET_AGENT(info->severity, info->status);

 pci_err(dev, "PCIe Bus Error: severity=%s, type=%s, (%s)\n",
  aer_error_severity_string[info->severity],
  aer_error_layer[layer], aer_agent_string[agent]);

 pci_err(dev, "  device [%04x:%04x] error status/mask=%08x/%08x\n",
  dev->vendor, dev->device,
  info->status, info->mask);

 __aer_print_error(dev, info);

 if (info->tlp_header_valid)
  __print_tlp_header(dev, &info->tlp);

out:
 if (info->id && info->error_dev_num > 1 && info->id == id)
  pci_err(dev, "  Error of this Agent is reported first\n");

 trace_aer_event(dev_name(&dev->dev), (info->status & ~info->mask),
   info->severity, info->tlp_header_valid, &info->tlp);
}
