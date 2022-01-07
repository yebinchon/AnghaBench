
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DATA_W ;
 int INDEX ;
 unsigned short inw (int ) ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static unsigned short zf_readw(unsigned char port)
{
 outb(port, INDEX);
 return inw(DATA_W);
}
