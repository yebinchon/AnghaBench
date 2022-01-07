
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nvme_dev {int dummy; } ;


 int adapter_delete_queue (struct nvme_dev*,int ,int ) ;
 int nvme_admin_delete_cq ;

__attribute__((used)) static int adapter_delete_cq(struct nvme_dev *dev, u16 cqid)
{
 return adapter_delete_queue(dev, nvme_admin_delete_cq, cqid);
}
