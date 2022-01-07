
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ns {int kref; } ;


 int kref_put (int *,int ) ;
 int nvme_free_ns ;

__attribute__((used)) static void nvme_put_ns(struct nvme_ns *ns)
{
 kref_put(&ns->kref, nvme_free_ns);
}
