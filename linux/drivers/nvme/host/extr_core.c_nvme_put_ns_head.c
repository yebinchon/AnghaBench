
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ns_head {int ref; } ;


 int kref_put (int *,int ) ;
 int nvme_free_ns_head ;

__attribute__((used)) static void nvme_put_ns_head(struct nvme_ns_head *head)
{
 kref_put(&head->ref, nvme_free_ns_head);
}
