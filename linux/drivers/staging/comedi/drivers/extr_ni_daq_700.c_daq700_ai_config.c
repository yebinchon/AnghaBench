
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {unsigned long iobase; } ;


 scalar_t__ ADCLEAR_R ;
 scalar_t__ ADFIFO_R ;
 scalar_t__ CMD_R1 ;
 scalar_t__ CMD_R2 ;
 scalar_t__ CMD_R3 ;
 scalar_t__ CMO_R ;
 scalar_t__ TIC_R ;
 int inw (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void daq700_ai_config(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 unsigned long iobase = dev->iobase;

 outb(0x80, iobase + CMD_R1);
 outb(0x00, iobase + CMD_R2);
 outb(0x00, iobase + CMD_R3);
 outb(0x32, iobase + CMO_R);
 outb(0x00, iobase + TIC_R);
 outb(0x00, iobase + ADCLEAR_R);
 inw(iobase + ADFIFO_R);
}
