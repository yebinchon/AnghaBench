
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* u32 ;
struct zpci_report_error_header {scalar_t__ length; int data; int action; } ;
struct sclp_req {scalar_t__ status; struct err_notify_sccb* sccb; int command; int callback; int * callback_data; } ;
struct TYPE_9__ {int response_code; scalar_t__ length; } ;
struct TYPE_7__ {scalar_t__ length; int type; } ;
struct TYPE_8__ {int data; void* fid; void* fh; int atype; int action; TYPE_1__ header; } ;
struct err_notify_sccb {TYPE_3__ header; TYPE_2__ evbuf; } ;
typedef int req ;
struct TYPE_10__ {int sclp_receive_mask; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int EIO ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int EVTYP_ERRNOTIFY ;
 int EVTYP_ERRNOTIFY_MASK ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int SCLP_ATYPE_PCI ;
 int SCLP_CMDW_WRITE_EVENT_DATA ;
 scalar_t__ SCLP_REQ_DONE ;
 scalar_t__ SCLP_REQ_FILLED ;
 int completion ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (struct sclp_req*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*,scalar_t__) ;
 int sclp_add_request (struct sclp_req*) ;
 int sclp_pci_callback ;
 int sclp_pci_check_report (struct zpci_report_error_header*) ;
 TYPE_4__ sclp_pci_event ;
 int sclp_pci_mutex ;
 int sclp_register (TYPE_4__*) ;
 int sclp_unregister (TYPE_4__*) ;
 int wait_for_completion (int *) ;

int sclp_pci_report(struct zpci_report_error_header *report, u32 fh, u32 fid)
{
 DECLARE_COMPLETION_ONSTACK(completion);
 struct err_notify_sccb *sccb;
 struct sclp_req req;
 int ret;

 ret = sclp_pci_check_report(report);
 if (ret)
  return ret;

 mutex_lock(&sclp_pci_mutex);
 ret = sclp_register(&sclp_pci_event);
 if (ret)
  goto out_unlock;

 if (!(sclp_pci_event.sclp_receive_mask & EVTYP_ERRNOTIFY_MASK)) {
  ret = -EOPNOTSUPP;
  goto out_unregister;
 }

 sccb = (void *) get_zeroed_page(GFP_KERNEL | GFP_DMA);
 if (!sccb) {
  ret = -ENOMEM;
  goto out_unregister;
 }

 memset(&req, 0, sizeof(req));
 req.callback_data = &completion;
 req.callback = sclp_pci_callback;
 req.command = SCLP_CMDW_WRITE_EVENT_DATA;
 req.status = SCLP_REQ_FILLED;
 req.sccb = sccb;

 sccb->evbuf.header.length = sizeof(sccb->evbuf) + report->length;
 sccb->evbuf.header.type = EVTYP_ERRNOTIFY;
 sccb->header.length = sizeof(sccb->header) + sccb->evbuf.header.length;

 sccb->evbuf.action = report->action;
 sccb->evbuf.atype = SCLP_ATYPE_PCI;
 sccb->evbuf.fh = fh;
 sccb->evbuf.fid = fid;

 memcpy(sccb->evbuf.data, report->data, report->length);

 ret = sclp_add_request(&req);
 if (ret)
  goto out_free_req;

 wait_for_completion(&completion);
 if (req.status != SCLP_REQ_DONE) {
  pr_warn("request failed (status=0x%02x)\n",
   req.status);
  ret = -EIO;
  goto out_free_req;
 }

 if (sccb->header.response_code != 0x0020) {
  pr_warn("request failed with response code 0x%x\n",
   sccb->header.response_code);
  ret = -EIO;
 }

out_free_req:
 free_page((unsigned long) sccb);
out_unregister:
 sclp_unregister(&sclp_pci_event);
out_unlock:
 mutex_unlock(&sclp_pci_mutex);
 return ret;
}
