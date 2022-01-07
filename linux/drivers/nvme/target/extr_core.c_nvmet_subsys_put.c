
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_subsys {int ref; } ;


 int kref_put (int *,int ) ;
 int nvmet_subsys_free ;

void nvmet_subsys_put(struct nvmet_subsys *subsys)
{
 kref_put(&subsys->ref, nvmet_subsys_free);
}
