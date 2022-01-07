
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ DAS6402_AI_DATA_REG ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static void das6402_ai_soft_trig(struct comedi_device *dev)
{
 outw(0, dev->iobase + DAS6402_AI_DATA_REG);
}
