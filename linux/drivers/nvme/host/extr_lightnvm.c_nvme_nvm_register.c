
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct nvme_ns {int lba_shift; struct nvm_dev* ndev; TYPE_1__* ctrl; int ext; int ms; struct request_queue* queue; } ;
struct nvm_geo {int csecs; int mdts; int ext; int sos; } ;
struct nvm_dev {struct nvme_ns* private_data; int * ops; int name; struct request_queue* q; struct nvm_geo geo; } ;
struct TYPE_2__ {int max_hw_sectors; } ;


 int DISK_NAME_LEN ;
 int ENOMEM ;
 int _nvme_nvm_check_size () ;
 int memcpy (int ,char*,int ) ;
 struct nvm_dev* nvm_alloc_dev (int) ;
 int nvm_register (struct nvm_dev*) ;
 int nvme_nvm_dev_ops ;

int nvme_nvm_register(struct nvme_ns *ns, char *disk_name, int node)
{
 struct request_queue *q = ns->queue;
 struct nvm_dev *dev;
 struct nvm_geo *geo;

 _nvme_nvm_check_size();

 dev = nvm_alloc_dev(node);
 if (!dev)
  return -ENOMEM;


 geo = &dev->geo;
 geo->csecs = 1 << ns->lba_shift;
 geo->sos = ns->ms;
 geo->ext = ns->ext;
 geo->mdts = ns->ctrl->max_hw_sectors;

 dev->q = q;
 memcpy(dev->name, disk_name, DISK_NAME_LEN);
 dev->ops = &nvme_nvm_dev_ops;
 dev->private_data = ns;
 ns->ndev = dev;

 return nvm_register(dev);
}
