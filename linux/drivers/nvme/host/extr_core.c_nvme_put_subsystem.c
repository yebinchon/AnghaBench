
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_subsystem {int ref; } ;


 int kref_put (int *,int ) ;
 int nvme_destroy_subsystem ;

__attribute__((used)) static void nvme_put_subsystem(struct nvme_subsystem *subsys)
{
 kref_put(&subsys->ref, nvme_destroy_subsystem);
}
