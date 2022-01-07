
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {int admin_q; } ;
struct nvme_dev {TYPE_2__ ctrl; } ;
struct TYPE_3__ {int qid; int opcode; } ;
struct nvme_command {TYPE_1__ delete_queue; } ;
typedef int c ;


 int cpu_to_le16 (int ) ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_submit_sync_cmd (int ,struct nvme_command*,int *,int ) ;

__attribute__((used)) static int adapter_delete_queue(struct nvme_dev *dev, u8 opcode, u16 id)
{
 struct nvme_command c;

 memset(&c, 0, sizeof(c));
 c.delete_queue.opcode = opcode;
 c.delete_queue.qid = cpu_to_le16(id);

 return nvme_submit_sync_cmd(dev->ctrl.admin_q, &c, ((void*)0), 0);
}
