
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 int ETIMEDOUT ;
 unsigned char PCI1760_CMD_CLR_IMB2 ;
 int PCI1760_CMD_RETRIES ;
 scalar_t__ PCI1760_IMB_REG (int) ;
 unsigned char inb (scalar_t__) ;
 int pci1760_send_cmd (struct comedi_device*,unsigned char,unsigned short) ;

__attribute__((used)) static int pci1760_cmd(struct comedi_device *dev,
         unsigned char cmd, unsigned short val)
{
 int repeats;
 int ret;


 if (inb(dev->iobase + PCI1760_IMB_REG(2)) == cmd) {
  ret = pci1760_send_cmd(dev, PCI1760_CMD_CLR_IMB2, 0);
  if (ret < 0) {

   ret = pci1760_send_cmd(dev, PCI1760_CMD_CLR_IMB2, 0);
   if (ret < 0)
    return -ETIMEDOUT;
  }
 }


 for (repeats = 0; repeats < PCI1760_CMD_RETRIES; repeats++) {
  ret = pci1760_send_cmd(dev, cmd, val);
  if (ret >= 0)
   return ret;
 }


 return -ETIMEDOUT;
}
