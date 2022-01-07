
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int EINVAL ;
 int PCI_CACHE_LINE_SIZE ;
 int pci_cache_line_size ;
 int pci_info (struct pci_dev*,char*,int) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;

int pci_set_cacheline_size(struct pci_dev *dev)
{
 u8 cacheline_size;

 if (!pci_cache_line_size)
  return -EINVAL;



 pci_read_config_byte(dev, PCI_CACHE_LINE_SIZE, &cacheline_size);
 if (cacheline_size >= pci_cache_line_size &&
     (cacheline_size % pci_cache_line_size) == 0)
  return 0;


 pci_write_config_byte(dev, PCI_CACHE_LINE_SIZE, pci_cache_line_size);

 pci_read_config_byte(dev, PCI_CACHE_LINE_SIZE, &cacheline_size);
 if (cacheline_size == pci_cache_line_size)
  return 0;

 pci_info(dev, "cache line size of %d is not supported\n",
     pci_cache_line_size << 2);

 return -EINVAL;
}
