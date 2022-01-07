
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_dev {int ctrl; } ;


 int EBUSY ;
 int nvme_dev_disable (struct nvme_dev*,int) ;
 int nvme_wait_reset (int *) ;

__attribute__((used)) static int nvme_disable_prepare_reset(struct nvme_dev *dev, bool shutdown)
{
 if (!nvme_wait_reset(&dev->ctrl))
  return -EBUSY;
 nvme_dev_disable(dev, shutdown);
 return 0;
}
