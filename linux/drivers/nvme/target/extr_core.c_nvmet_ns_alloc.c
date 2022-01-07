
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvmet_subsys {int dummy; } ;
struct nvmet_ns {size_t anagrpid; int buffered_io; int uuid; struct nvmet_subsys* subsys; int nsid; int disable_done; int dev_link; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 size_t NVMET_DEFAULT_ANA_GRPID ;
 int down_write (int *) ;
 int init_completion (int *) ;
 struct nvmet_ns* kzalloc (int,int ) ;
 int * nvmet_ana_group_enabled ;
 int nvmet_ana_sem ;
 int up_write (int *) ;
 int uuid_gen (int *) ;

struct nvmet_ns *nvmet_ns_alloc(struct nvmet_subsys *subsys, u32 nsid)
{
 struct nvmet_ns *ns;

 ns = kzalloc(sizeof(*ns), GFP_KERNEL);
 if (!ns)
  return ((void*)0);

 INIT_LIST_HEAD(&ns->dev_link);
 init_completion(&ns->disable_done);

 ns->nsid = nsid;
 ns->subsys = subsys;

 down_write(&nvmet_ana_sem);
 ns->anagrpid = NVMET_DEFAULT_ANA_GRPID;
 nvmet_ana_group_enabled[ns->anagrpid]++;
 up_write(&nvmet_ana_sem);

 uuid_gen(&ns->uuid);
 ns->buffered_io = 0;

 return ns;
}
