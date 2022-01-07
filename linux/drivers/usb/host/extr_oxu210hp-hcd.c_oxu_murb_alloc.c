
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxu_murb {int dummy; } ;
struct oxu_hcd {int* murb_used; int mem_lock; struct oxu_murb* murb_pool; } ;


 int MURB_NUM ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct oxu_murb *oxu_murb_alloc(struct oxu_hcd *oxu)

{
 int i;
 struct oxu_murb *murb = ((void*)0);

 spin_lock(&oxu->mem_lock);

 for (i = 0; i < MURB_NUM; i++)
  if (!oxu->murb_used[i])
   break;

 if (i < MURB_NUM) {
  murb = &(oxu->murb_pool)[i];

  oxu->murb_used[i] = 1;
 }

 spin_unlock(&oxu->mem_lock);

 return murb;
}
