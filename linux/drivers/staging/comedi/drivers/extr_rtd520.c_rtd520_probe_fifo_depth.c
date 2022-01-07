
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int class_dev; scalar_t__ mmio; } ;


 int AREF_GROUND ;
 unsigned int CR_PACK (int ,int ,int ) ;
 int EIO ;
 unsigned int FS_ADC_HEMPTY ;
 scalar_t__ LAS0_ADC ;
 scalar_t__ LAS0_ADC_CONVERSION ;
 scalar_t__ LAS0_ADC_FIFO_CLEAR ;
 int dev_info (int ,char*,...) ;
 unsigned int readl (scalar_t__) ;
 int rtd_load_channelgain_list (struct comedi_device*,int,unsigned int*) ;
 int usleep_range (int,int) ;
 int writel (int ,scalar_t__) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static int rtd520_probe_fifo_depth(struct comedi_device *dev)
{
 unsigned int chanspec = CR_PACK(0, 0, AREF_GROUND);
 unsigned int i;
 static const unsigned int limit = 0x2000;
 unsigned int fifo_size = 0;

 writel(0, dev->mmio + LAS0_ADC_FIFO_CLEAR);
 rtd_load_channelgain_list(dev, 1, &chanspec);

 writel(0, dev->mmio + LAS0_ADC_CONVERSION);

 for (i = 0; i < limit; ++i) {
  unsigned int fifo_status;

  writew(0, dev->mmio + LAS0_ADC);
  usleep_range(1, 1000);
  fifo_status = readl(dev->mmio + LAS0_ADC);
  if ((fifo_status & FS_ADC_HEMPTY) == 0) {
   fifo_size = 2 * i;
   break;
  }
 }
 if (i == limit) {
  dev_info(dev->class_dev, "failed to probe fifo size.\n");
  return -EIO;
 }
 writel(0, dev->mmio + LAS0_ADC_FIFO_CLEAR);
 if (fifo_size != 0x400 && fifo_size != 0x2000) {
  dev_info(dev->class_dev,
    "unexpected fifo size of %i, expected 1024 or 8192.\n",
    fifo_size);
  return -EIO;
 }
 return fifo_size;
}
