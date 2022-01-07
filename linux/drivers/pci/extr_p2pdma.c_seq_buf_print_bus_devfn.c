
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_buf {int dummy; } ;
struct pci_dev {int dummy; } ;


 int pci_name (struct pci_dev*) ;
 int seq_buf_printf (struct seq_buf*,char*,int ) ;

__attribute__((used)) static void seq_buf_print_bus_devfn(struct seq_buf *buf, struct pci_dev *pdev)
{
 if (!buf)
  return;

 seq_buf_printf(buf, "%s;", pci_name(pdev));
}
