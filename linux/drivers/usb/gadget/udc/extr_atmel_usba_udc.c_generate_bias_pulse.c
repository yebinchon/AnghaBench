
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usba_udc {int bias_pulse_needed; TYPE_1__* errata; } ;
struct TYPE_2__ {int (* pulse_bias ) (struct usba_udc*) ;} ;


 int stub1 (struct usba_udc*) ;

__attribute__((used)) static void generate_bias_pulse(struct usba_udc *udc)
{
 if (!udc->bias_pulse_needed)
  return;

 if (udc->errata && udc->errata->pulse_bias)
  udc->errata->pulse_bias(udc);

 udc->bias_pulse_needed = 0;
}
