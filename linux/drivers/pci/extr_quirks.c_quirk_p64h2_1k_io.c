
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int io_window_1k; } ;


 int pci_info (struct pci_dev*,char*) ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;

__attribute__((used)) static void quirk_p64h2_1k_io(struct pci_dev *dev)
{
 u16 en1k;

 pci_read_config_word(dev, 0x40, &en1k);

 if (en1k & 0x200) {
  pci_info(dev, "Enable I/O Space to 1KB granularity\n");
  dev->io_window_1k = 1;
 }
}
