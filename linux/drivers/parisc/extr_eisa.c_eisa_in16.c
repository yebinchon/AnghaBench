
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EISA_bus ;
 int eisa_permute (unsigned short) ;
 int gsc_readw (int ) ;
 unsigned short le16_to_cpu (int ) ;

unsigned short eisa_in16(unsigned short port)
{
 if (EISA_bus)
  return le16_to_cpu(gsc_readw(eisa_permute(port)));
 return 0xffff;
}
