
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int * eeprom_buffer; struct mite* mite; } ;
struct mite {scalar_t__ mmio; int pcidev; } ;
struct comedi_device {struct ni_private* private; } ;
typedef int resource_size_t ;


 scalar_t__ MITE_IODWBSR ;
 scalar_t__ MITE_IODWBSR_1 ;
 scalar_t__ MITE_IODWCR_1 ;
 int M_SERIES_EEPROM_SIZE ;
 int ni_readb (struct comedi_device*,int const) ;
 int pci_resource_start (int ,int) ;
 unsigned int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void m_series_init_eeprom_buffer(struct comedi_device *dev)
{
 struct ni_private *devpriv = dev->private;
 struct mite *mite = devpriv->mite;
 resource_size_t daq_phys_addr;
 static const int Start_Cal_EEPROM = 0x400;
 static const unsigned int window_size = 10;
 unsigned int old_iodwbsr_bits;
 unsigned int old_iodwbsr1_bits;
 unsigned int old_iodwcr1_bits;
 int i;


 daq_phys_addr = pci_resource_start(mite->pcidev, 1);

 old_iodwbsr_bits = readl(mite->mmio + MITE_IODWBSR);
 old_iodwbsr1_bits = readl(mite->mmio + MITE_IODWBSR_1);
 old_iodwcr1_bits = readl(mite->mmio + MITE_IODWCR_1);
 writel(0x0, mite->mmio + MITE_IODWBSR);
 writel(((0x80 | window_size) | daq_phys_addr),
        mite->mmio + MITE_IODWBSR_1);
 writel(0x1 | old_iodwcr1_bits, mite->mmio + MITE_IODWCR_1);
 writel(0xf, mite->mmio + 0x30);

 for (i = 0; i < M_SERIES_EEPROM_SIZE; ++i)
  devpriv->eeprom_buffer[i] = ni_readb(dev, Start_Cal_EEPROM + i);

 writel(old_iodwbsr1_bits, mite->mmio + MITE_IODWBSR_1);
 writel(old_iodwbsr_bits, mite->mmio + MITE_IODWBSR);
 writel(old_iodwcr1_bits, mite->mmio + MITE_IODWCR_1);
 writel(0x0, mite->mmio + 0x30);
}
