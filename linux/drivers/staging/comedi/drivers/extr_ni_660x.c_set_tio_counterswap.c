
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int NI660X_CLK_CFG ;
 unsigned int NI660X_CLK_CFG_COUNTER_SWAP ;
 int ni_660x_write (struct comedi_device*,int,unsigned int,int ) ;

__attribute__((used)) static void set_tio_counterswap(struct comedi_device *dev, int chip)
{
 unsigned int bits = 0;







 if (chip)
  bits = NI660X_CLK_CFG_COUNTER_SWAP;

 ni_660x_write(dev, chip, bits, NI660X_CLK_CFG);
}
