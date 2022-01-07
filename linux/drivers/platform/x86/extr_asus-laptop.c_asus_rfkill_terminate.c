
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_rfkill {int * rfkill; } ;


 int rfkill_destroy (int *) ;
 int rfkill_unregister (int *) ;

__attribute__((used)) static void asus_rfkill_terminate(struct asus_rfkill *rfk)
{
 if (!rfk->rfkill)
  return ;

 rfkill_unregister(rfk->rfkill);
 rfkill_destroy(rfk->rfkill);
 rfk->rfkill = ((void*)0);
}
