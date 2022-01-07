
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ns_head {int srcu; } ;


 int srcu_read_unlock (int *,int) ;

__attribute__((used)) static void nvme_put_ns_from_disk(struct nvme_ns_head *head, int idx)
{
 if (head)
  srcu_read_unlock(&head->srcu, idx);
}
