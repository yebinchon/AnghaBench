
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_queue {int dummy; } ;
struct nvme_dev {struct nvme_queue* queues; } ;
struct nvme_ctrl {int dummy; } ;
struct TYPE_2__ {int command_id; int opcode; } ;
struct nvme_command {TYPE_1__ common; } ;
typedef int c ;


 int NVME_AQ_BLK_MQ_DEPTH ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_admin_async_event ;
 int nvme_submit_cmd (struct nvme_queue*,struct nvme_command*,int) ;
 struct nvme_dev* to_nvme_dev (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_pci_submit_async_event(struct nvme_ctrl *ctrl)
{
 struct nvme_dev *dev = to_nvme_dev(ctrl);
 struct nvme_queue *nvmeq = &dev->queues[0];
 struct nvme_command c;

 memset(&c, 0, sizeof(c));
 c.common.opcode = nvme_admin_async_event;
 c.common.command_id = NVME_AQ_BLK_MQ_DEPTH;
 nvme_submit_cmd(nvmeq, &c, 1);
}
