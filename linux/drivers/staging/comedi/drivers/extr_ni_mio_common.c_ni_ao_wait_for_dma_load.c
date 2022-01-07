
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int class_dev; } ;


 int EPIPE ;
 unsigned short NISTC_AO_STATUS1_FIFO_HF ;
 int NISTC_AO_STATUS1_REG ;
 int dev_err (int ,char*) ;
 unsigned short ni_stc_readw (struct comedi_device*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ni_ao_wait_for_dma_load(struct comedi_device *dev)
{
 static const int timeout = 10000;
 int i;

 for (i = 0; i < timeout; i++) {
  unsigned short b_status;

  b_status = ni_stc_readw(dev, NISTC_AO_STATUS1_REG);
  if (b_status & NISTC_AO_STATUS1_FIFO_HF)
   break;




  usleep_range(10, 100);
 }
 if (i == timeout) {
  dev_err(dev->class_dev, "timed out waiting for dma load\n");
  return -EPIPE;
 }
 return 0;
}
