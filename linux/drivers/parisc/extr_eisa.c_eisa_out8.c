
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EISA_bus ;
 int eisa_permute (unsigned short) ;
 int gsc_writeb (unsigned char,int ) ;

void eisa_out8(unsigned char data, unsigned short port)
{
 if (EISA_bus)
  gsc_writeb(data, eisa_permute(port));
}
