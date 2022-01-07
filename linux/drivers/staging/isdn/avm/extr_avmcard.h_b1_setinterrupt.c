
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum avmcardtype { ____Placeholder_avmcardtype } avmcardtype ;


 int B1_INSTAT ;
 int B1_RESET ;
 int T1_IRQMASTER ;







 int* b1_irq_table ;
 int b1outp (unsigned int,int ,int) ;
 int t1outp (unsigned int,int ,int) ;

__attribute__((used)) static inline void b1_setinterrupt(unsigned int base, unsigned irq,
       enum avmcardtype cardtype)
{
 switch (cardtype) {
 case 129:
  t1outp(base, B1_INSTAT, 0x00);
  t1outp(base, B1_INSTAT, 0x02);
  t1outp(base, T1_IRQMASTER, 0x08);
  break;
 case 134:
  b1outp(base, B1_INSTAT, 0x00);
  b1outp(base, B1_RESET, b1_irq_table[irq]);
  b1outp(base, B1_INSTAT, 0x02);
  break;
 default:
 case 131:
 case 130:
 case 133:
  b1outp(base, B1_INSTAT, 0x00);
  b1outp(base, B1_RESET, 0xf0);
  b1outp(base, B1_INSTAT, 0x02);
  break;
 case 132:
 case 128:
  b1outp(base, B1_RESET, 0xf0);
  break;
 }
}
