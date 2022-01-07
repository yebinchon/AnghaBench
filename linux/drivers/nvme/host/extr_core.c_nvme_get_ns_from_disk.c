
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ns_head {int srcu; } ;
struct nvme_ns {int srcu; } ;
struct gendisk {struct nvme_ns_head* private_data; int * fops; } ;


 struct nvme_ns_head* nvme_find_path (struct nvme_ns_head*) ;
 int nvme_ns_head_ops ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

__attribute__((used)) static struct nvme_ns *nvme_get_ns_from_disk(struct gendisk *disk,
  struct nvme_ns_head **head, int *srcu_idx)
{
 *head = ((void*)0);
 *srcu_idx = -1;
 return disk->private_data;
}
