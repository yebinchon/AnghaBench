
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int IRQInfo1; int IRQInfo2; } ;
typedef TYPE_1__ cistpl_irq_t ;


 int IRQ_INFO2_VALID ;

__attribute__((used)) static u_char *parse_irq(u_char *p, u_char *q, cistpl_irq_t *irq)
{
 if (p == q)
  return ((void*)0);
 irq->IRQInfo1 = *p; p++;
 if (irq->IRQInfo1 & IRQ_INFO2_VALID) {
  if (p+2 > q)
   return ((void*)0);
  irq->IRQInfo2 = (p[1]<<8) + p[0];
  p += 2;
 }
 return p;
}
