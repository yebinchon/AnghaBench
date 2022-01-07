
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int avm_b1pcmcia ;
 int b1pcmcia_add_card (unsigned int,unsigned int,int ) ;

int b1pcmcia_addcard_b1(unsigned int port, unsigned irq)
{
 return b1pcmcia_add_card(port, irq, avm_b1pcmcia);
}
