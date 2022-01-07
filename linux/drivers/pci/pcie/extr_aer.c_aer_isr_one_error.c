
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct aer_rpc {struct pci_dev* rpd; } ;
struct aer_err_source {int status; int id; } ;
struct aer_err_info {int multi_error_valid; int severity; int id; } ;


 int AER_CORRECTABLE ;
 int AER_FATAL ;
 int AER_NONFATAL ;
 int ERR_COR_ID (int ) ;
 int ERR_UNCOR_ID (int ) ;
 int PCI_ERR_ROOT_COR_RCV ;
 int PCI_ERR_ROOT_FATAL_RCV ;
 int PCI_ERR_ROOT_MULTI_COR_RCV ;
 int PCI_ERR_ROOT_MULTI_UNCOR_RCV ;
 int PCI_ERR_ROOT_UNCOR_RCV ;
 int aer_print_port_info (struct pci_dev*,struct aer_err_info*) ;
 int aer_process_err_devices (struct aer_err_info*) ;
 scalar_t__ find_source_device (struct pci_dev*,struct aer_err_info*) ;
 int pci_rootport_aer_stats_incr (struct pci_dev*,struct aer_err_source*) ;

__attribute__((used)) static void aer_isr_one_error(struct aer_rpc *rpc,
  struct aer_err_source *e_src)
{
 struct pci_dev *pdev = rpc->rpd;
 struct aer_err_info e_info;

 pci_rootport_aer_stats_incr(pdev, e_src);





 if (e_src->status & PCI_ERR_ROOT_COR_RCV) {
  e_info.id = ERR_COR_ID(e_src->id);
  e_info.severity = AER_CORRECTABLE;

  if (e_src->status & PCI_ERR_ROOT_MULTI_COR_RCV)
   e_info.multi_error_valid = 1;
  else
   e_info.multi_error_valid = 0;
  aer_print_port_info(pdev, &e_info);

  if (find_source_device(pdev, &e_info))
   aer_process_err_devices(&e_info);
 }

 if (e_src->status & PCI_ERR_ROOT_UNCOR_RCV) {
  e_info.id = ERR_UNCOR_ID(e_src->id);

  if (e_src->status & PCI_ERR_ROOT_FATAL_RCV)
   e_info.severity = AER_FATAL;
  else
   e_info.severity = AER_NONFATAL;

  if (e_src->status & PCI_ERR_ROOT_MULTI_UNCOR_RCV)
   e_info.multi_error_valid = 1;
  else
   e_info.multi_error_valid = 0;

  aer_print_port_info(pdev, &e_info);

  if (find_source_device(pdev, &e_info))
   aer_process_err_devices(&e_info);
 }
}
