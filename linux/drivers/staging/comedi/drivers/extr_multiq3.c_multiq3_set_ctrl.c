
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 unsigned int MULTIQ3_CTRL_CLK ;
 scalar_t__ MULTIQ3_CTRL_REG ;
 unsigned int MULTIQ3_CTRL_SH ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static void multiq3_set_ctrl(struct comedi_device *dev, unsigned int bits)
{




 outw(MULTIQ3_CTRL_SH | MULTIQ3_CTRL_CLK | bits,
      dev->iobase + MULTIQ3_CTRL_REG);
}
