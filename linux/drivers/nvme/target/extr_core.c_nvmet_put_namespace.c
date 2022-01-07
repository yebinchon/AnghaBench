
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_ns {int ref; } ;


 int percpu_ref_put (int *) ;

void nvmet_put_namespace(struct nvmet_ns *ns)
{
 percpu_ref_put(&ns->ref);
}
