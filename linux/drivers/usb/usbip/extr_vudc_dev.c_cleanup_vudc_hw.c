
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vudc {int ep; } ;


 int kfree (int ) ;

__attribute__((used)) static void cleanup_vudc_hw(struct vudc *udc)
{
 kfree(udc->ep);
}
