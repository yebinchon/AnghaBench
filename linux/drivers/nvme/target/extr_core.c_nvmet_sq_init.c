
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_sq {int confirm_done; int free_done; int ref; } ;


 int GFP_KERNEL ;
 int init_completion (int *) ;
 int nvmet_sq_free ;
 int percpu_ref_init (int *,int ,int ,int ) ;
 int pr_err (char*) ;

int nvmet_sq_init(struct nvmet_sq *sq)
{
 int ret;

 ret = percpu_ref_init(&sq->ref, nvmet_sq_free, 0, GFP_KERNEL);
 if (ret) {
  pr_err("percpu_ref init failed!\n");
  return ret;
 }
 init_completion(&sq->free_done);
 init_completion(&sq->confirm_done);

 return 0;
}
