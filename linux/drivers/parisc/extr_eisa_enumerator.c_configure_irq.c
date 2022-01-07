
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int HPEE_IRQ_CHANNEL_MASK ;
 int HPEE_IRQ_MAX_ENT ;
 int HPEE_IRQ_MORE ;
 int HPEE_IRQ_TRIG_LEVEL ;
 int eisa_make_irq_edge (int) ;
 int eisa_make_irq_level (int) ;
 int get_8 (unsigned char const*) ;
 int pr_cont (char*,int) ;

__attribute__((used)) static int configure_irq(const unsigned char *buf)
{
 int len;
 u_int8_t c;
 int i;

 len=0;

 for (i=0;i<HPEE_IRQ_MAX_ENT;i++) {
  c = get_8(buf+len);

  pr_cont("IRQ %d ", c & HPEE_IRQ_CHANNEL_MASK);
  if (c & HPEE_IRQ_TRIG_LEVEL) {
   eisa_make_irq_level(c & HPEE_IRQ_CHANNEL_MASK);
  } else {
   eisa_make_irq_edge(c & HPEE_IRQ_CHANNEL_MASK);
  }

  len+=2;



  if (!(c & HPEE_IRQ_MORE)) {
   break;
  }
 }

 return len;
}
