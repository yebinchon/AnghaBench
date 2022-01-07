
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_filp_private {int write_combine; int mmap_state; } ;
struct pci_dev {int bus; } ;
struct file {struct pci_filp_private* private_data; } ;


 long EINVAL ;
 int LOCKDOWN_PCI_ACCESS ;




 struct pci_dev* PDE_DATA (int ) ;
 int arch_can_pci_mmap_io () ;
 int arch_can_pci_mmap_wc () ;
 int file_inode (struct file*) ;
 int pci_domain_nr (int ) ;
 int pci_mmap_io ;
 int pci_mmap_mem ;
 int security_locked_down (int ) ;

__attribute__((used)) static long proc_bus_pci_ioctl(struct file *file, unsigned int cmd,
          unsigned long arg)
{
 struct pci_dev *dev = PDE_DATA(file_inode(file));



 int ret = 0;

 ret = security_locked_down(LOCKDOWN_PCI_ACCESS);
 if (ret)
  return ret;

 switch (cmd) {
 case 131:
  ret = pci_domain_nr(dev->bus);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
