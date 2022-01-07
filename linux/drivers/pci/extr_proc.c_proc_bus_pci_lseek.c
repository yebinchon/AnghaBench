
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int cfg_size; } ;
struct file {int dummy; } ;
typedef int loff_t ;


 struct pci_dev* PDE_DATA (int ) ;
 int file_inode (struct file*) ;
 int fixed_size_llseek (struct file*,int ,int,int ) ;

__attribute__((used)) static loff_t proc_bus_pci_lseek(struct file *file, loff_t off, int whence)
{
 struct pci_dev *dev = PDE_DATA(file_inode(file));
 return fixed_size_llseek(file, off, whence, dev->cfg_size);
}
