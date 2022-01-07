
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int mem; int list; } ;


 int CMF_ON ;
 TYPE_1__ cmb_area ;
 int cmf_activate (int ,int ) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void cmf_reactivate(void)
{
 spin_lock(&cmb_area.lock);
 if (!list_empty(&cmb_area.list))
  cmf_activate(cmb_area.mem, CMF_ON);
 spin_unlock(&cmb_area.lock);
}
