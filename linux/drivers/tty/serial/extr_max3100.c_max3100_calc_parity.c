
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct max3100_port {int parity; } ;


 int MAX3100_7BIT ;
 int MAX3100_PARITY_ON ;
 int max3100_do_parity (struct max3100_port*,int) ;

__attribute__((used)) static void max3100_calc_parity(struct max3100_port *s, u16 *c)
{
 if (s->parity & MAX3100_7BIT)
  *c &= 0x7f;
 else
  *c &= 0xff;

 if (s->parity & MAX3100_PARITY_ON)
  *c |= max3100_do_parity(s, *c) << 8;
}
