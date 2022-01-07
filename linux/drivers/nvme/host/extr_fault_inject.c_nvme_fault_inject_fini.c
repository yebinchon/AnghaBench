
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_fault_inject {int parent; } ;


 int debugfs_remove_recursive (int ) ;

void nvme_fault_inject_fini(struct nvme_fault_inject *fault_inject)
{

 debugfs_remove_recursive(fault_inject->parent);
}
