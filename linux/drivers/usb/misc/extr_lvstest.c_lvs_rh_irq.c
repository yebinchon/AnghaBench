
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {struct lvs_rh* context; } ;
struct lvs_rh {int rh_work; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void lvs_rh_irq(struct urb *urb)
{
 struct lvs_rh *lvs = urb->context;

 schedule_work(&lvs->rh_work);
}
