
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_req {int queue_timeout; scalar_t__ status; struct completion* callback_data; int callback; void* sccb; int command; } ;
struct completion {int dummy; } ;
typedef int sclp_cmdw_t ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ SCLP_REQ_DONE ;
 scalar_t__ SCLP_REQ_FILLED ;
 int init_completion (struct completion*) ;
 int kfree (struct sclp_req*) ;
 struct sclp_req* kzalloc (int,int ) ;
 int pr_warn (char*,int ,scalar_t__) ;
 int sclp_add_request (struct sclp_req*) ;
 int sclp_sync_callback ;
 int wait_for_completion (struct completion*) ;

int sclp_sync_request_timeout(sclp_cmdw_t cmd, void *sccb, int timeout)
{
 struct completion completion;
 struct sclp_req *request;
 int rc;

 request = kzalloc(sizeof(*request), GFP_KERNEL);
 if (!request)
  return -ENOMEM;
 if (timeout)
  request->queue_timeout = timeout;
 request->command = cmd;
 request->sccb = sccb;
 request->status = SCLP_REQ_FILLED;
 request->callback = sclp_sync_callback;
 request->callback_data = &completion;
 init_completion(&completion);


 rc = sclp_add_request(request);
 if (rc)
  goto out;
 wait_for_completion(&completion);


 if (request->status != SCLP_REQ_DONE) {
  pr_warn("sync request failed (cmd=0x%08x, status=0x%02x)\n",
   cmd, request->status);
  rc = -EIO;
 }
out:
 kfree(request);
 return rc;
}
