
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lkb {int * lkb_resource; } ;


 int put_rsb (int *) ;

__attribute__((used)) static void detach_lkb(struct dlm_lkb *lkb)
{
 if (lkb->lkb_resource) {
  put_rsb(lkb->lkb_resource);
  lkb->lkb_resource = ((void*)0);
 }
}
