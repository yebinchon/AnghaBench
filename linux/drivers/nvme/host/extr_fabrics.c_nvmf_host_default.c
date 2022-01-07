
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmf_host {int list; int nqn; int id; int ref; } ;


 int GFP_KERNEL ;
 int NVMF_NQN_SIZE ;
 struct nvmf_host* kmalloc (int,int ) ;
 int kref_init (int *) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvmf_hosts ;
 int nvmf_hosts_mutex ;
 int snprintf (int ,int ,char*,int *) ;
 int uuid_gen (int *) ;

__attribute__((used)) static struct nvmf_host *nvmf_host_default(void)
{
 struct nvmf_host *host;

 host = kmalloc(sizeof(*host), GFP_KERNEL);
 if (!host)
  return ((void*)0);

 kref_init(&host->ref);
 uuid_gen(&host->id);
 snprintf(host->nqn, NVMF_NQN_SIZE,
  "nqn.2014-08.org.nvmexpress:uuid:%pUb", &host->id);

 mutex_lock(&nvmf_hosts_mutex);
 list_add_tail(&host->list, &nvmf_hosts);
 mutex_unlock(&nvmf_hosts_mutex);

 return host;
}
