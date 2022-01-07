
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmf_host {int list; int nqn; int ref; } ;


 int GFP_KERNEL ;
 int NVMF_NQN_SIZE ;
 struct nvmf_host* __nvmf_host_find (char const*) ;
 struct nvmf_host* kmalloc (int,int ) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvmf_hosts ;
 int nvmf_hosts_mutex ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static struct nvmf_host *nvmf_host_add(const char *hostnqn)
{
 struct nvmf_host *host;

 mutex_lock(&nvmf_hosts_mutex);
 host = __nvmf_host_find(hostnqn);
 if (host) {
  kref_get(&host->ref);
  goto out_unlock;
 }

 host = kmalloc(sizeof(*host), GFP_KERNEL);
 if (!host)
  goto out_unlock;

 kref_init(&host->ref);
 strlcpy(host->nqn, hostnqn, NVMF_NQN_SIZE);

 list_add_tail(&host->list, &nvmf_hosts);
out_unlock:
 mutex_unlock(&nvmf_hosts_mutex);
 return host;
}
