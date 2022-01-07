
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pci_dev {int dummy; } ;


 int pci_dev_put (struct pci_dev*) ;

__attribute__((used)) static void pci_seq_stop(struct seq_file *m, void *v)
{
 if (v) {
  struct pci_dev *dev = v;
  pci_dev_put(dev);
 }
}
