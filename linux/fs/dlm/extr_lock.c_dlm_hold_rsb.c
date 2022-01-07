
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;


 int hold_rsb (struct dlm_rsb*) ;

void dlm_hold_rsb(struct dlm_rsb *r)
{
 hold_rsb(r);
}
