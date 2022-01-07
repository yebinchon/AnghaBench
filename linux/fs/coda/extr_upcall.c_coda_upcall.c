
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int result; } ;
union outputArgs {TYPE_1__ oh; } ;
struct TYPE_4__ {scalar_t__ unique; int opcode; } ;
union inputArgs {TYPE_2__ ih; } ;
struct venus_comm {int vc_mutex; int vc_waitq; int vc_pending; int vc_inuse; scalar_t__ vc_seq; } ;
struct upc_req {int uc_flags; int uc_inSize; int uc_outSize; int uc_chain; void* uc_data; scalar_t__ uc_unique; int uc_opcode; int uc_sleep; } ;
struct coda_in_hdr {int dummy; } ;


 int CODA_REQ_ABORT ;
 int CODA_REQ_ASYNC ;
 int CODA_REQ_READ ;
 int CODA_REQ_WRITE ;
 int CODA_SIGNAL ;
 int EINTR ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int coda_waitfor_upcall (struct venus_comm*,struct upc_req*) ;
 int current ;
 int init_waitqueue_head (int *) ;
 int kfree (struct upc_req*) ;
 struct upc_req* kmalloc (int,int ) ;
 union inputArgs* kvzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*) ;
 int pr_notice (char*) ;
 int pr_warn (char*) ;
 int signal_pending (int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int coda_upcall(struct venus_comm *vcp,
         int inSize, int *outSize,
         union inputArgs *buffer)
{
 union outputArgs *out;
 union inputArgs *sig_inputArgs;
 struct upc_req *req = ((void*)0), *sig_req;
 int error;

 mutex_lock(&vcp->vc_mutex);

 if (!vcp->vc_inuse) {
  pr_notice("Venus dead, not sending upcall\n");
  error = -ENXIO;
  goto exit;
 }


 req = kmalloc(sizeof(struct upc_req), GFP_KERNEL);
 if (!req) {
  error = -ENOMEM;
  goto exit;
 }

 buffer->ih.unique = ++vcp->vc_seq;

 req->uc_data = (void *)buffer;
 req->uc_flags = outSize ? 0 : CODA_REQ_ASYNC;
 req->uc_inSize = inSize;
 req->uc_outSize = (outSize && *outSize) ? *outSize : inSize;
 req->uc_opcode = buffer->ih.opcode;
 req->uc_unique = buffer->ih.unique;
 init_waitqueue_head(&req->uc_sleep);


 list_add_tail(&req->uc_chain, &vcp->vc_pending);
 wake_up_interruptible(&vcp->vc_waitq);

 if (req->uc_flags & CODA_REQ_ASYNC) {
  mutex_unlock(&vcp->vc_mutex);
  return 0;
 }
 coda_waitfor_upcall(vcp, req);


 if (req->uc_flags & CODA_REQ_WRITE) {
  out = (union outputArgs *)req->uc_data;

  error = -out->oh.result;
  *outSize = req->uc_outSize;
  goto exit;
 }

 error = -EINTR;
 if ((req->uc_flags & CODA_REQ_ABORT) || !signal_pending(current)) {
  pr_warn("Unexpected interruption.\n");
  goto exit;
 }


 if (!(req->uc_flags & CODA_REQ_READ))
  goto exit;


 if (!vcp->vc_inuse) {
  pr_info("Venus dead, not sending signal.\n");
  goto exit;
 }

 error = -ENOMEM;
 sig_req = kmalloc(sizeof(struct upc_req), GFP_KERNEL);
 if (!sig_req) goto exit;

 sig_inputArgs = kvzalloc(sizeof(struct coda_in_hdr), GFP_KERNEL);
 if (!sig_inputArgs) {
  kfree(sig_req);
  goto exit;
 }

 error = -EINTR;
 sig_inputArgs->ih.opcode = CODA_SIGNAL;
 sig_inputArgs->ih.unique = req->uc_unique;

 sig_req->uc_flags = CODA_REQ_ASYNC;
 sig_req->uc_opcode = sig_inputArgs->ih.opcode;
 sig_req->uc_unique = sig_inputArgs->ih.unique;
 sig_req->uc_data = (void *)sig_inputArgs;
 sig_req->uc_inSize = sizeof(struct coda_in_hdr);
 sig_req->uc_outSize = sizeof(struct coda_in_hdr);


 list_add(&(sig_req->uc_chain), &vcp->vc_pending);
 wake_up_interruptible(&vcp->vc_waitq);

exit:
 kfree(req);
 mutex_unlock(&vcp->vc_mutex);
 return error;
}
