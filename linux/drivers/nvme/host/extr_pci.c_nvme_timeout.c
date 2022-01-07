
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct request {int q; int * end_io_data; int timeout; int tag; } ;
struct nvme_queue {int qid; struct nvme_dev* dev; } ;
struct nvme_iod {int aborted; struct nvme_queue* nvmeq; } ;
struct TYPE_6__ {int state; int abort_limit; int admin_q; int device; } ;
struct nvme_dev {TYPE_2__ ctrl; int dev; scalar_t__ bar; } ;
struct TYPE_5__ {int sqid; int cid; int opcode; } ;
struct nvme_command {TYPE_1__ abort; } ;
typedef enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;
typedef int cmd ;
struct TYPE_7__ {int flags; } ;


 int ADMIN_TIMEOUT ;
 int BLK_EH_DONE ;
 int BLK_EH_RESET_TIMER ;
 int BLK_MQ_REQ_NOWAIT ;
 scalar_t__ IS_ERR (struct request*) ;



 int NVME_QID_ANY ;
 scalar_t__ NVME_REG_CSTS ;
 int NVME_REQ_CANCELLED ;
 int abort_endio ;
 scalar_t__ atomic_dec_return (int *) ;
 int atomic_inc (int *) ;
 int blk_execute_rq_nowait (int ,int *,struct request*,int ,int ) ;
 struct nvme_iod* blk_mq_rq_to_pdu (struct request*) ;
 int cpu_to_le16 (int ) ;
 int dev_warn (int ,char*,int ,int ) ;
 int dev_warn_ratelimited (int ,char*,int ,int ) ;
 int mb () ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_admin_abort_cmd ;
 struct request* nvme_alloc_request (int ,struct nvme_command*,int ,int ) ;
 int nvme_change_ctrl_state (TYPE_2__*,int) ;
 int nvme_dev_disable (struct nvme_dev*,int) ;
 scalar_t__ nvme_poll_irqdisable (struct nvme_queue*,int ) ;
 TYPE_3__* nvme_req (struct request*) ;
 int nvme_reset_ctrl (TYPE_2__*) ;
 scalar_t__ nvme_should_reset (struct nvme_dev*,int ) ;
 int nvme_warn_reset (struct nvme_dev*,int ) ;
 scalar_t__ pci_channel_offline (int ) ;
 int readl (scalar_t__) ;
 int to_pci_dev (int ) ;

__attribute__((used)) static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
{
 struct nvme_iod *iod = blk_mq_rq_to_pdu(req);
 struct nvme_queue *nvmeq = iod->nvmeq;
 struct nvme_dev *dev = nvmeq->dev;
 struct request *abort_req;
 struct nvme_command cmd;
 u32 csts = readl(dev->bar + NVME_REG_CSTS);




 mb();
 if (pci_channel_offline(to_pci_dev(dev->dev)))
  return BLK_EH_RESET_TIMER;




 if (nvme_should_reset(dev, csts)) {
  nvme_warn_reset(dev, csts);
  nvme_dev_disable(dev, 0);
  nvme_reset_ctrl(&dev->ctrl);
  return BLK_EH_DONE;
 }




 if (nvme_poll_irqdisable(nvmeq, req->tag)) {
  dev_warn(dev->ctrl.device,
    "I/O %d QID %d timeout, completion polled\n",
    req->tag, nvmeq->qid);
  return BLK_EH_DONE;
 }







 switch (dev->ctrl.state) {
 case 130:
  nvme_change_ctrl_state(&dev->ctrl, 129);

 case 129:
  dev_warn_ratelimited(dev->ctrl.device,
    "I/O %d QID %d timeout, disable controller\n",
    req->tag, nvmeq->qid);
  nvme_dev_disable(dev, 1);
  nvme_req(req)->flags |= NVME_REQ_CANCELLED;
  return BLK_EH_DONE;
 case 128:
  return BLK_EH_RESET_TIMER;
 default:
  break;
 }






 if (!nvmeq->qid || iod->aborted) {
  dev_warn(dev->ctrl.device,
    "I/O %d QID %d timeout, reset controller\n",
    req->tag, nvmeq->qid);
  nvme_dev_disable(dev, 0);
  nvme_reset_ctrl(&dev->ctrl);

  nvme_req(req)->flags |= NVME_REQ_CANCELLED;
  return BLK_EH_DONE;
 }

 if (atomic_dec_return(&dev->ctrl.abort_limit) < 0) {
  atomic_inc(&dev->ctrl.abort_limit);
  return BLK_EH_RESET_TIMER;
 }
 iod->aborted = 1;

 memset(&cmd, 0, sizeof(cmd));
 cmd.abort.opcode = nvme_admin_abort_cmd;
 cmd.abort.cid = req->tag;
 cmd.abort.sqid = cpu_to_le16(nvmeq->qid);

 dev_warn(nvmeq->dev->ctrl.device,
  "I/O %d QID %d timeout, aborting\n",
   req->tag, nvmeq->qid);

 abort_req = nvme_alloc_request(dev->ctrl.admin_q, &cmd,
   BLK_MQ_REQ_NOWAIT, NVME_QID_ANY);
 if (IS_ERR(abort_req)) {
  atomic_inc(&dev->ctrl.abort_limit);
  return BLK_EH_RESET_TIMER;
 }

 abort_req->timeout = ADMIN_TIMEOUT;
 abort_req->end_io_data = ((void*)0);
 blk_execute_rq_nowait(abort_req->q, ((void*)0), abort_req, 0, abort_endio);






 return BLK_EH_RESET_TIMER;
}
