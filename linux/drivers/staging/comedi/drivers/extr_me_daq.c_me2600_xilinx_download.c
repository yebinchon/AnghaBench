
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct me_private_data {scalar_t__ plx_regbase; } ;
struct comedi_device {int class_dev; scalar_t__ mmio; struct me_private_data* private; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ PLX9052_INTCSR ;
 int PLX9052_INTCSR_LI1ENAB ;
 int PLX9052_INTCSR_LI1POL ;
 unsigned int PLX9052_INTCSR_LI2STAT ;
 int PLX9052_INTCSR_PCIENAB ;
 scalar_t__ XILINX_DOWNLOAD_RESET ;
 int dev_err (int ,char*) ;
 unsigned int readl (scalar_t__) ;
 unsigned int readw (scalar_t__) ;
 int sleep (int) ;
 int writeb (int const,scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int me2600_xilinx_download(struct comedi_device *dev,
      const u8 *data, size_t size,
      unsigned long context)
{
 struct me_private_data *devpriv = dev->private;
 unsigned int value;
 unsigned int file_length;
 unsigned int i;


 writel(0x00, devpriv->plx_regbase + PLX9052_INTCSR);


 value = readw(dev->mmio + XILINX_DOWNLOAD_RESET);


 sleep(1);


 writeb(0x00, dev->mmio + 0x0);
 sleep(1);
 if (size < 16)
  return -EINVAL;

 file_length = (((unsigned int)data[0] & 0xff) << 24) +
     (((unsigned int)data[1] & 0xff) << 16) +
     (((unsigned int)data[2] & 0xff) << 8) +
     ((unsigned int)data[3] & 0xff);





 for (i = 0; i < file_length; i++)
  writeb((data[16 + i] & 0xff), dev->mmio + 0x0);


 for (i = 0; i < 5; i++)
  writeb(0x00, dev->mmio + 0x0);


 value = readl(devpriv->plx_regbase + PLX9052_INTCSR);
 if (value & PLX9052_INTCSR_LI2STAT) {

  writel(0x00, devpriv->plx_regbase + PLX9052_INTCSR);
  dev_err(dev->class_dev, "Xilinx download failed\n");
  return -EIO;
 }


 sleep(1);


 writel(PLX9052_INTCSR_LI1ENAB |
        PLX9052_INTCSR_LI1POL |
        PLX9052_INTCSR_PCIENAB,
        devpriv->plx_regbase + PLX9052_INTCSR);

 return 0;
}
