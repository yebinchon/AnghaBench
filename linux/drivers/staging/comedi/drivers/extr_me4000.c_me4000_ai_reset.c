
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 unsigned int ME4000_AI_CTRL_IMMEDIATE_STOP ;
 scalar_t__ ME4000_AI_CTRL_REG ;
 unsigned int ME4000_AI_CTRL_STOP ;
 unsigned int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static void me4000_ai_reset(struct comedi_device *dev)
{
 unsigned int ctrl;


 ctrl = inl(dev->iobase + ME4000_AI_CTRL_REG);
 ctrl |= ME4000_AI_CTRL_STOP | ME4000_AI_CTRL_IMMEDIATE_STOP;
 outl(ctrl, dev->iobase + ME4000_AI_CTRL_REG);


 outl(0x0, dev->iobase + ME4000_AI_CTRL_REG);
}
