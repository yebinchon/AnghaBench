
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sclp_req {scalar_t__ status; scalar_t__ sccb; struct completion* callback_data; } ;
struct TYPE_5__ {int response_code; } ;
struct cpi_sccb {TYPE_1__ header; } ;
struct completion {int dummy; } ;
struct TYPE_6__ {int sclp_receive_mask; } ;


 int EIO ;
 int EOPNOTSUPP ;
 int EVTYP_CTLPROGIDENT_MASK ;
 scalar_t__ IS_ERR (struct sclp_req*) ;
 int PTR_ERR (struct sclp_req*) ;
 scalar_t__ SCLP_REQ_DONE ;
 int cpi_free_req (struct sclp_req*) ;
 struct sclp_req* cpi_prepare_req () ;
 int init_completion (struct completion*) ;
 int pr_warn (char*,int) ;
 int sclp_add_request (struct sclp_req*) ;
 TYPE_2__ sclp_cpi_event ;
 int sclp_register (TYPE_2__*) ;
 int sclp_unregister (TYPE_2__*) ;
 int wait_for_completion (struct completion*) ;

__attribute__((used)) static int cpi_req(void)
{
 struct completion completion;
 struct sclp_req *req;
 int rc;
 int response;

 rc = sclp_register(&sclp_cpi_event);
 if (rc)
  goto out;
 if (!(sclp_cpi_event.sclp_receive_mask & EVTYP_CTLPROGIDENT_MASK)) {
  rc = -EOPNOTSUPP;
  goto out_unregister;
 }

 req = cpi_prepare_req();
 if (IS_ERR(req)) {
  rc = PTR_ERR(req);
  goto out_unregister;
 }

 init_completion(&completion);
 req->callback_data = &completion;


 rc = sclp_add_request(req);
 if (rc)
  goto out_free_req;

 wait_for_completion(&completion);

 if (req->status != SCLP_REQ_DONE) {
  pr_warn("request failed (status=0x%02x)\n", req->status);
  rc = -EIO;
  goto out_free_req;
 }

 response = ((struct cpi_sccb *) req->sccb)->header.response_code;
 if (response != 0x0020) {
  pr_warn("request failed with response code 0x%x\n", response);
  rc = -EIO;
 }

out_free_req:
 cpi_free_req(req);

out_unregister:
 sclp_unregister(&sclp_cpi_event);

out:
 return rc;
}
