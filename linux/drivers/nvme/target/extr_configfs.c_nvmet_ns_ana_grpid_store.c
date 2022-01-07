
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvmet_ns {int anagrpid; int subsys; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int NVMET_MAX_ANAGRPS ;
 int down_write (int *) ;
 int kstrtou32 (char const*,int ,int*) ;
 int nvmet_ana_chgcnt ;
 int * nvmet_ana_group_enabled ;
 int nvmet_ana_sem ;
 int nvmet_send_ana_event (int ,int *) ;
 struct nvmet_ns* to_nvmet_ns (struct config_item*) ;
 int up_write (int *) ;

__attribute__((used)) static ssize_t nvmet_ns_ana_grpid_store(struct config_item *item,
  const char *page, size_t count)
{
 struct nvmet_ns *ns = to_nvmet_ns(item);
 u32 oldgrpid, newgrpid;
 int ret;

 ret = kstrtou32(page, 0, &newgrpid);
 if (ret)
  return ret;

 if (newgrpid < 1 || newgrpid > NVMET_MAX_ANAGRPS)
  return -EINVAL;

 down_write(&nvmet_ana_sem);
 oldgrpid = ns->anagrpid;
 nvmet_ana_group_enabled[newgrpid]++;
 ns->anagrpid = newgrpid;
 nvmet_ana_group_enabled[oldgrpid]--;
 nvmet_ana_chgcnt++;
 up_write(&nvmet_ana_sem);

 nvmet_send_ana_event(ns->subsys, ((void*)0));
 return count;
}
