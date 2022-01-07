
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvme_queue {int flags; int delete_done; } ;
struct nvme_dev {int online_queues; struct nvme_queue* queues; } ;


 unsigned long ADMIN_TIMEOUT ;
 int NVMEQ_DELETE_ERROR ;
 int nvme_admin_delete_cq ;
 scalar_t__ nvme_delete_queue (struct nvme_queue*,int ) ;
 int nvme_poll_irqdisable (struct nvme_queue*,int) ;
 int test_bit (int ,int *) ;
 unsigned long wait_for_completion_io_timeout (int *,unsigned long) ;

__attribute__((used)) static bool __nvme_disable_io_queues(struct nvme_dev *dev, u8 opcode)
{
 int nr_queues = dev->online_queues - 1, sent = 0;
 unsigned long timeout;

 retry:
 timeout = ADMIN_TIMEOUT;
 while (nr_queues > 0) {
  if (nvme_delete_queue(&dev->queues[nr_queues], opcode))
   break;
  nr_queues--;
  sent++;
 }
 while (sent) {
  struct nvme_queue *nvmeq = &dev->queues[nr_queues + sent];

  timeout = wait_for_completion_io_timeout(&nvmeq->delete_done,
    timeout);
  if (timeout == 0)
   return 0;


  if (opcode == nvme_admin_delete_cq &&
      !test_bit(NVMEQ_DELETE_ERROR, &nvmeq->flags))
   nvme_poll_irqdisable(nvmeq, -1);

  sent--;
  if (nr_queues)
   goto retry;
 }
 return 1;
}
