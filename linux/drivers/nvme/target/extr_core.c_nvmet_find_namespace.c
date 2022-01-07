
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_ns {int ref; } ;
struct nvmet_ctrl {int dummy; } ;
typedef int __le32 ;


 struct nvmet_ns* __nvmet_find_namespace (struct nvmet_ctrl*,int ) ;
 int percpu_ref_get (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct nvmet_ns *nvmet_find_namespace(struct nvmet_ctrl *ctrl, __le32 nsid)
{
 struct nvmet_ns *ns;

 rcu_read_lock();
 ns = __nvmet_find_namespace(ctrl, nsid);
 if (ns)
  percpu_ref_get(&ns->ref);
 rcu_read_unlock();

 return ns;
}
