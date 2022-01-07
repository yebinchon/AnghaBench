
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int msleep (int) ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;

int pci_wait_for_pending(struct pci_dev *dev, int pos, u16 mask)
{
 int i;


 for (i = 0; i < 4; i++) {
  u16 status;
  if (i)
   msleep((1 << (i - 1)) * 100);

  pci_read_config_word(dev, pos, &status);
  if (!(status & mask))
   return 1;
 }

 return 0;
}
