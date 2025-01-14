
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct max3100_port {int parity; } ;


 int MAX3100_7BIT ;
 int MAX3100_PARITY_ODD ;
 int hweight8 (int) ;

__attribute__((used)) static int max3100_do_parity(struct max3100_port *s, u16 c)
{
 int parity;

 if (s->parity & MAX3100_PARITY_ODD)
  parity = 1;
 else
  parity = 0;

 if (s->parity & MAX3100_7BIT)
  c &= 0x7f;
 else
  c &= 0xff;

 parity = parity ^ (hweight8(c) & 1);
 return parity;
}
