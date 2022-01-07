
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_hal_comp {int comp; int status; } ;
typedef int bfa_status_t ;


 int complete (int *) ;

void
bfad_hcb_comp(void *arg, bfa_status_t status)
{
 struct bfad_hal_comp *fcomp = (struct bfad_hal_comp *)arg;

 fcomp->status = status;
 complete(&fcomp->comp);
}
