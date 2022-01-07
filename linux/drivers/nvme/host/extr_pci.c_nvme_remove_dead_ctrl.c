
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_dev {int ctrl; int remove_work; } ;


 int NVME_CTRL_DELETING ;
 int nvme_change_ctrl_state (int *,int ) ;
 int nvme_dev_disable (struct nvme_dev*,int) ;
 int nvme_get_ctrl (int *) ;
 int nvme_kill_queues (int *) ;
 int nvme_put_ctrl (int *) ;
 int nvme_wq ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void nvme_remove_dead_ctrl(struct nvme_dev *dev)
{




 nvme_change_ctrl_state(&dev->ctrl, NVME_CTRL_DELETING);
 nvme_get_ctrl(&dev->ctrl);
 nvme_dev_disable(dev, 0);
 nvme_kill_queues(&dev->ctrl);
 if (!queue_work(nvme_wq, &dev->remove_work))
  nvme_put_ctrl(&dev->ctrl);
}
