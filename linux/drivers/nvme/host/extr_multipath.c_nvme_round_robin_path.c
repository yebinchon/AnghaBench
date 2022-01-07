
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ns_head {int * current_path; int list; } ;
struct nvme_ns {scalar_t__ ana_state; } ;


 scalar_t__ NVME_ANA_NONOPTIMIZED ;
 scalar_t__ NVME_ANA_OPTIMIZED ;
 scalar_t__ list_is_singular (int *) ;
 struct nvme_ns* nvme_next_ns (struct nvme_ns_head*,struct nvme_ns*) ;
 scalar_t__ nvme_path_is_disabled (struct nvme_ns*) ;
 int rcu_assign_pointer (int ,struct nvme_ns*) ;

__attribute__((used)) static struct nvme_ns *nvme_round_robin_path(struct nvme_ns_head *head,
  int node, struct nvme_ns *old)
{
 struct nvme_ns *ns, *found, *fallback = ((void*)0);

 if (list_is_singular(&head->list)) {
  if (nvme_path_is_disabled(old))
   return ((void*)0);
  return old;
 }

 for (ns = nvme_next_ns(head, old);
      ns != old;
      ns = nvme_next_ns(head, ns)) {
  if (nvme_path_is_disabled(ns))
   continue;

  if (ns->ana_state == NVME_ANA_OPTIMIZED) {
   found = ns;
   goto out;
  }
  if (ns->ana_state == NVME_ANA_NONOPTIMIZED)
   fallback = ns;
 }

 if (!fallback)
  return ((void*)0);
 found = fallback;
out:
 rcu_assign_pointer(head->current_path[node], found);
 return found;
}
