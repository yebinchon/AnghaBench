
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_lun {int lun_shutdown_comp; int lun_ref; } ;


 int percpu_ref_kill (int *) ;
 int wait_for_completion (int *) ;

void transport_clear_lun_ref(struct se_lun *lun)
{
 percpu_ref_kill(&lun->lun_ref);
 wait_for_completion(&lun->lun_shutdown_comp);
}
