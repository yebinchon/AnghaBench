
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u64 ;
struct ibmvfc_host {int dev; int sent; } ;
struct TYPE_13__ {scalar_t__ expires; } ;
struct TYPE_10__ {scalar_t__ format; } ;
struct TYPE_11__ {int status; void* tag; } ;
struct TYPE_9__ {void* tag; } ;
struct TYPE_12__ {TYPE_3__ mad_common; TYPE_1__ cmd; } ;
struct ibmvfc_event {int (* done ) (struct ibmvfc_event*) ;TYPE_4__* xfer_iu; TYPE_6__* cmnd; TYPE_5__ timer; int queue; TYPE_2__ crq; TYPE_4__ iu; } ;
typedef int __be64 ;
struct TYPE_14__ {int result; } ;


 int BUG () ;
 int DID_ERROR ;
 unsigned long HZ ;
 int H_CLOSED ;
 scalar_t__ IBMVFC_CMD_FORMAT ;
 int IBMVFC_MAD_CRQ_ERROR ;
 scalar_t__ IBMVFC_MAD_FORMAT ;
 int SCSI_MLQUEUE_HOST_BUSY ;
 int add_timer (TYPE_5__*) ;
 int be64_to_cpu (int ) ;
 int cpu_to_be16 (int ) ;
 void* cpu_to_be64 (int ) ;
 int del_timer (TYPE_5__*) ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int ibmvfc_free_event (struct ibmvfc_event*) ;
 int ibmvfc_scsi_eh_done (struct ibmvfc_event*) ;
 int ibmvfc_send_crq (struct ibmvfc_host*,int ,int ) ;
 int ibmvfc_timeout ;
 int ibmvfc_trc_start (struct ibmvfc_event*) ;
 scalar_t__ jiffies ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int mb () ;
 scalar_t__ printk_ratelimit () ;
 int scsi_dma_unmap (TYPE_6__*) ;
 int stub1 (struct ibmvfc_event*) ;
 int timer_setup (TYPE_5__*,int ,int ) ;

__attribute__((used)) static int ibmvfc_send_event(struct ibmvfc_event *evt,
        struct ibmvfc_host *vhost, unsigned long timeout)
{
 __be64 *crq_as_u64 = (__be64 *) &evt->crq;
 int rc;


 *evt->xfer_iu = evt->iu;
 if (evt->crq.format == IBMVFC_CMD_FORMAT)
  evt->xfer_iu->cmd.tag = cpu_to_be64((u64)evt);
 else if (evt->crq.format == IBMVFC_MAD_FORMAT)
  evt->xfer_iu->mad_common.tag = cpu_to_be64((u64)evt);
 else
  BUG();

 list_add_tail(&evt->queue, &vhost->sent);
 timer_setup(&evt->timer, ibmvfc_timeout, 0);

 if (timeout) {
  evt->timer.expires = jiffies + (timeout * HZ);
  add_timer(&evt->timer);
 }

 mb();

 if ((rc = ibmvfc_send_crq(vhost, be64_to_cpu(crq_as_u64[0]),
      be64_to_cpu(crq_as_u64[1])))) {
  list_del(&evt->queue);
  del_timer(&evt->timer);






  if (rc == H_CLOSED) {
   if (printk_ratelimit())
    dev_warn(vhost->dev, "Send warning. Receive queue closed, will retry.\n");
   if (evt->cmnd)
    scsi_dma_unmap(evt->cmnd);
   ibmvfc_free_event(evt);
   return SCSI_MLQUEUE_HOST_BUSY;
  }

  dev_err(vhost->dev, "Send error (rc=%d)\n", rc);
  if (evt->cmnd) {
   evt->cmnd->result = DID_ERROR << 16;
   evt->done = ibmvfc_scsi_eh_done;
  } else
   evt->xfer_iu->mad_common.status = cpu_to_be16(IBMVFC_MAD_CRQ_ERROR);

  evt->done(evt);
 } else
  ibmvfc_trc_start(evt);

 return 0;
}
