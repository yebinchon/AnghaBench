
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usba_udc {TYPE_1__* errata; } ;
struct TYPE_2__ {int (* toggle_bias ) (struct usba_udc*,int) ;} ;


 int stub1 (struct usba_udc*,int) ;

__attribute__((used)) static void toggle_bias(struct usba_udc *udc, int is_on)
{
 if (udc->errata && udc->errata->toggle_bias)
  udc->errata->toggle_bias(udc, is_on);
}
