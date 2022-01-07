
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * function; } ;
struct mvs_phy {TYPE_1__ timer; } ;


 int del_timer (TYPE_1__*) ;

__attribute__((used)) static void mvs_sig_remove_timer(struct mvs_phy *phy)
{
 if (phy->timer.function)
  del_timer(&phy->timer);
 phy->timer.function = ((void*)0);
}
