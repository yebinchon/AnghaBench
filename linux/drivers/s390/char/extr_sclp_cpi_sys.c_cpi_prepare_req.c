
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sclp_req {int callback; int status; struct cpi_sccb* sccb; int command; } ;
struct TYPE_4__ {int length; int type; } ;
struct cpi_evbuf {int sysplex_name; int system_level; int system_name; int system_type; TYPE_2__ header; } ;
struct TYPE_3__ {int length; } ;
struct cpi_sccb {struct cpi_evbuf cpi_evbuf; TYPE_1__ header; } ;


 int ENOMEM ;
 struct sclp_req* ERR_PTR (int ) ;
 int EVTYP_CTLPROGIDENT ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int SCLP_CMDW_WRITE_EVENT_DATA ;
 int SCLP_REQ_FILLED ;
 int cpi_callback ;
 scalar_t__ get_zeroed_page (int) ;
 int kfree (struct sclp_req*) ;
 struct sclp_req* kzalloc (int,int) ;
 int set_data (int ,int ) ;
 int sysplex_name ;
 int system_level ;
 int system_name ;
 int system_type ;

__attribute__((used)) static struct sclp_req *cpi_prepare_req(void)
{
 struct sclp_req *req;
 struct cpi_sccb *sccb;
 struct cpi_evbuf *evb;

 req = kzalloc(sizeof(struct sclp_req), GFP_KERNEL);
 if (!req)
  return ERR_PTR(-ENOMEM);
 sccb = (struct cpi_sccb *) get_zeroed_page(GFP_KERNEL | GFP_DMA);
 if (!sccb) {
  kfree(req);
  return ERR_PTR(-ENOMEM);
 }


 sccb->header.length = sizeof(struct cpi_sccb);
 sccb->cpi_evbuf.header.length = sizeof(struct cpi_evbuf);
 sccb->cpi_evbuf.header.type = EVTYP_CTLPROGIDENT;
 evb = &sccb->cpi_evbuf;


 set_data(evb->system_type, system_type);


 set_data(evb->system_name, system_name);


 evb->system_level = system_level;


 set_data(evb->sysplex_name, sysplex_name);


 req->command = SCLP_CMDW_WRITE_EVENT_DATA;
 req->sccb = sccb;
 req->status = SCLP_REQ_FILLED;
 req->callback = cpi_callback;
 return req;
}
