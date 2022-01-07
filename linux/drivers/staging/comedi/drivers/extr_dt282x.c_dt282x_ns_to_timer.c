
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CMDF_ROUND_MASK ;


 unsigned int DIV_ROUND_CLOSEST (unsigned int,unsigned int) ;
 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 unsigned int DT2821_DIVIDER_MAX ;
 unsigned int DT2821_OSC_BASE ;
 unsigned int DT2821_PRESCALE (unsigned int) ;
 unsigned int DT2821_PRESCALE_MAX ;
 unsigned int DT2821_TMRCTR_DIVIDER (unsigned int) ;
 unsigned int DT2821_TMRCTR_PRESCALE (unsigned int) ;

__attribute__((used)) static unsigned int dt282x_ns_to_timer(unsigned int *ns, unsigned int flags)
{
 unsigned int prescale, base, divider;

 for (prescale = 0; prescale <= DT2821_PRESCALE_MAX; prescale++) {
  if (prescale == 1)
   continue;
  base = DT2821_OSC_BASE * DT2821_PRESCALE(prescale);
  switch (flags & CMDF_ROUND_MASK) {
  case 129:
  default:
   divider = DIV_ROUND_CLOSEST(*ns, base);
   break;
  case 130:
   divider = (*ns) / base;
   break;
  case 128:
   divider = DIV_ROUND_UP(*ns, base);
   break;
  }
  if (divider <= DT2821_DIVIDER_MAX)
   break;
 }
 if (divider > DT2821_DIVIDER_MAX) {
  prescale = DT2821_PRESCALE_MAX;
  divider = DT2821_DIVIDER_MAX;
  base = DT2821_OSC_BASE * DT2821_PRESCALE(prescale);
 }
 *ns = divider * base;
 return DT2821_TMRCTR_PRESCALE(prescale) |
        DT2821_TMRCTR_DIVIDER(divider);
}
