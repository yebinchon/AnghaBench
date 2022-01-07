
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tsi148_driver {int iack_queue; } ;


 int TSI148_LCSR_INTC_IACKC ;
 int wake_up (int *) ;

__attribute__((used)) static u32 tsi148_IACK_irqhandler(struct tsi148_driver *bridge)
{
 wake_up(&bridge->iack_queue);

 return TSI148_LCSR_INTC_IACKC;
}
