
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_ns {size_t anagrpid; struct nvmet_ns* device_path; } ;


 int down_write (int *) ;
 int kfree (struct nvmet_ns*) ;
 int * nvmet_ana_group_enabled ;
 int nvmet_ana_sem ;
 int nvmet_ns_disable (struct nvmet_ns*) ;
 int up_write (int *) ;

void nvmet_ns_free(struct nvmet_ns *ns)
{
 nvmet_ns_disable(ns);

 down_write(&nvmet_ana_sem);
 nvmet_ana_group_enabled[ns->anagrpid]--;
 up_write(&nvmet_ana_sem);

 kfree(ns->device_path);
 kfree(ns);
}
