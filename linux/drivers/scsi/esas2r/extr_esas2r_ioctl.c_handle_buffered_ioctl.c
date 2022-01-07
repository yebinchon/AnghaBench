
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct esas2r_sg_context {scalar_t__ length; scalar_t__ get_phys_addr; scalar_t__ cur_offset; } ;
struct esas2r_request {int comp_cb; } ;
struct esas2r_buffered_ioctl {scalar_t__ length; scalar_t__ ioctl; int done_context; int (* done_callback ) (struct esas2r_adapter*,struct esas2r_request*,int ) ;int context; int (* callback ) (struct esas2r_adapter*,struct esas2r_request*,struct esas2r_sg_context*,int ) ;scalar_t__ offset; struct esas2r_adapter* a; } ;
struct esas2r_adapter {scalar_t__ buffered_ioctl_done; int buffered_ioctl_waiter; TYPE_1__* pcid; } ;
struct TYPE_2__ {int dev; } ;
typedef scalar_t__ PGETPHYSADDR ;


 int ESAS2R_LOG_CRIT ;
 int GFP_KERNEL ;
 scalar_t__ IOCTL_OUT_OF_RESOURCES ;
 scalar_t__ IOCTL_SUCCESS ;
 int buffered_ioctl_semaphore ;
 int complete_buffered_ioctl_req ;
 scalar_t__ dma_alloc_coherent (int *,size_t,int *,int ) ;
 int dma_free_coherent (int *,size_t,scalar_t__,int ) ;
 scalar_t__ down_interruptible (int *) ;
 struct esas2r_request* esas2r_alloc_request (struct esas2r_adapter*) ;
 scalar_t__ esas2r_buffered_ioctl ;
 int esas2r_buffered_ioctl_addr ;
 TYPE_1__* esas2r_buffered_ioctl_pcid ;
 scalar_t__ esas2r_buffered_ioctl_size ;
 int esas2r_debug (char*) ;
 int esas2r_free_request (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_log (int ,char*,...) ;
 scalar_t__ get_physaddr_buffered_ioctl ;
 int memcpy (scalar_t__,scalar_t__,scalar_t__) ;
 int stub1 (struct esas2r_adapter*,struct esas2r_request*,struct esas2r_sg_context*,int ) ;
 int stub2 (struct esas2r_adapter*,struct esas2r_request*,int ) ;
 int up (int *) ;
 int wait_event_interruptible (int ,scalar_t__) ;

__attribute__((used)) static u8 handle_buffered_ioctl(struct esas2r_buffered_ioctl *bi)
{
 struct esas2r_adapter *a = bi->a;
 struct esas2r_request *rq;
 struct esas2r_sg_context sgc;
 u8 result = IOCTL_SUCCESS;

 if (down_interruptible(&buffered_ioctl_semaphore))
  return IOCTL_OUT_OF_RESOURCES;


 if (esas2r_buffered_ioctl) {
  if (esas2r_buffered_ioctl_size < bi->length) {

   dma_free_coherent(&a->pcid->dev,
       (size_t)esas2r_buffered_ioctl_size,
       esas2r_buffered_ioctl,
       esas2r_buffered_ioctl_addr);

   goto allocate_buffer;
  }
 } else {
allocate_buffer:
  esas2r_buffered_ioctl_size = bi->length;
  esas2r_buffered_ioctl_pcid = a->pcid;
  esas2r_buffered_ioctl = dma_alloc_coherent(&a->pcid->dev,
          (size_t)
          esas2r_buffered_ioctl_size,
          &
          esas2r_buffered_ioctl_addr,
          GFP_KERNEL);
 }

 if (!esas2r_buffered_ioctl) {
  esas2r_log(ESAS2R_LOG_CRIT,
      "could not allocate %d bytes of consistent memory "
      "for a buffered ioctl!",
      bi->length);

  esas2r_debug("buffered ioctl alloc failure");
  result = IOCTL_OUT_OF_RESOURCES;
  goto exit_cleanly;
 }

 memcpy(esas2r_buffered_ioctl, bi->ioctl, bi->length);

 rq = esas2r_alloc_request(a);
 if (rq == ((void*)0)) {
  esas2r_log(ESAS2R_LOG_CRIT,
      "could not allocate an internal request");

  result = IOCTL_OUT_OF_RESOURCES;
  esas2r_debug("buffered ioctl - no requests");
  goto exit_cleanly;
 }

 a->buffered_ioctl_done = 0;
 rq->comp_cb = complete_buffered_ioctl_req;
 sgc.cur_offset = esas2r_buffered_ioctl + bi->offset;
 sgc.get_phys_addr = (PGETPHYSADDR)get_physaddr_buffered_ioctl;
 sgc.length = esas2r_buffered_ioctl_size;

 if (!(*bi->callback)(a, rq, &sgc, bi->context)) {

  a->buffered_ioctl_done = 0;
  goto free_andexit_cleanly;
 }


 while (!a->buffered_ioctl_done)
  wait_event_interruptible(a->buffered_ioctl_waiter,
      a->buffered_ioctl_done);

free_andexit_cleanly:
 if (result == IOCTL_SUCCESS && bi->done_callback)
  (*bi->done_callback)(a, rq, bi->done_context);

 esas2r_free_request(a, rq);

exit_cleanly:
 if (result == IOCTL_SUCCESS)
  memcpy(bi->ioctl, esas2r_buffered_ioctl, bi->length);

 up(&buffered_ioctl_semaphore);
 return result;
}
