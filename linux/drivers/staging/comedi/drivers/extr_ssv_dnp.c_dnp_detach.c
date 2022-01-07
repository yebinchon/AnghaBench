
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int CSCDR ;
 int CSCIR ;
 int PAMR ;
 int PBMR ;
 int PCMR ;
 int inb (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static void dnp_detach(struct comedi_device *dev)
{
 outb(PAMR, CSCIR);
 outb(0x00, CSCDR);
 outb(PBMR, CSCIR);
 outb(0x00, CSCDR);
 outb(PCMR, CSCIR);
 outb((inb(CSCDR) & 0xAA), CSCDR);
}
