
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {scalar_t__ ies_capacity; int * ies; } ;


 int kfree (int *) ;

void uwb_rc_ie_release(struct uwb_rc *uwb_rc)
{
 kfree(uwb_rc->ies);
 uwb_rc->ies = ((void*)0);
 uwb_rc->ies_capacity = 0;
}
