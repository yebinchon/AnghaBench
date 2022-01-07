
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmf_host {int ref; } ;


 int kref_put (int *,int ) ;
 int nvmf_host_destroy ;

__attribute__((used)) static void nvmf_host_put(struct nvmf_host *host)
{
 if (host)
  kref_put(&host->ref, nvmf_host_destroy);
}
