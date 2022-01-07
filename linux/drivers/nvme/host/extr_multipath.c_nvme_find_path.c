
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ns_head {TYPE_1__* subsys; int srcu; int * current_path; } ;
struct nvme_ns {int dummy; } ;
struct TYPE_2__ {int iopolicy; } ;


 scalar_t__ NVME_IOPOLICY_RR ;
 scalar_t__ READ_ONCE (int ) ;
 struct nvme_ns* __nvme_find_path (struct nvme_ns_head*,int) ;
 int numa_node_id () ;
 int nvme_path_is_optimized (struct nvme_ns*) ;
 struct nvme_ns* nvme_round_robin_path (struct nvme_ns_head*,int,struct nvme_ns*) ;
 struct nvme_ns* srcu_dereference (int ,int *) ;
 scalar_t__ unlikely (int) ;

inline struct nvme_ns *nvme_find_path(struct nvme_ns_head *head)
{
 int node = numa_node_id();
 struct nvme_ns *ns;

 ns = srcu_dereference(head->current_path[node], &head->srcu);
 if (READ_ONCE(head->subsys->iopolicy) == NVME_IOPOLICY_RR && ns)
  ns = nvme_round_robin_path(head, node, ns);
 if (unlikely(!ns || !nvme_path_is_optimized(ns)))
  ns = __nvme_find_path(head, node);
 return ns;
}
