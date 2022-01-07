
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int length; int response_code; } ;
struct TYPE_5__ {int length; scalar_t__ flags; int type; } ;
struct TYPE_6__ {int event_id; int blk_cnt; unsigned long asa; int fbn; int dbs; scalar_t__ lbn; scalar_t__ event_status; int asa_size; int data_id; int event_qual; TYPE_1__ hdr; } ;
struct sdias_sccb {TYPE_3__ hdr; int callback; int status; int command; struct sdias_sccb* sccb; TYPE_2__ evbuf; } ;
struct sdias_evbuf {int dummy; } ;
struct sclp_req {TYPE_3__ hdr; int callback; int status; int command; struct sclp_req* sccb; TYPE_2__ evbuf; } ;
typedef int request ;
struct TYPE_8__ {int event_status; int blk_cnt; } ;


 int EIO ;
 int EVTYP_SDIAS ;
 int SCLP_CMDW_WRITE_EVENT_DATA ;
 int SCLP_REQ_FILLED ;
 int SDIAS_ASA_SIZE_64 ;
 int SDIAS_DI_FCP_DUMP ;
 int SDIAS_EQ_STORE_DATA ;



 int TRACE (char*,...) ;
 int memset (struct sdias_sccb*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int) ;
 struct sdias_sccb* sclp_sdias_sccb ;
 int sdias_callback ;
 TYPE_4__ sdias_evbuf ;
 int sdias_mutex ;
 int sdias_sclp_send (struct sdias_sccb*) ;

int sclp_sdias_copy(void *dest, int start_blk, int nr_blks)
{
 struct sdias_sccb *sccb = sclp_sdias_sccb;
 struct sclp_req request;
 int rc;

 mutex_lock(&sdias_mutex);

 memset(sccb, 0, sizeof(*sccb));
 memset(&request, 0, sizeof(request));

 sccb->hdr.length = sizeof(*sccb);
 sccb->evbuf.hdr.length = sizeof(struct sdias_evbuf);
 sccb->evbuf.hdr.type = EVTYP_SDIAS;
 sccb->evbuf.hdr.flags = 0;
 sccb->evbuf.event_qual = SDIAS_EQ_STORE_DATA;
 sccb->evbuf.data_id = SDIAS_DI_FCP_DUMP;
 sccb->evbuf.event_id = 4712;
 sccb->evbuf.asa_size = SDIAS_ASA_SIZE_64;
 sccb->evbuf.event_status = 0;
 sccb->evbuf.blk_cnt = nr_blks;
 sccb->evbuf.asa = (unsigned long)dest;
 sccb->evbuf.fbn = start_blk;
 sccb->evbuf.lbn = 0;
 sccb->evbuf.dbs = 1;

 request.sccb = sccb;
 request.command = SCLP_CMDW_WRITE_EVENT_DATA;
 request.status = SCLP_REQ_FILLED;
 request.callback = sdias_callback;

 rc = sdias_sclp_send(&request);
 if (rc) {
  pr_err("sclp_send failed: %x\n", rc);
  goto out;
 }
 if (sccb->hdr.response_code != 0x0020) {
  TRACE("copy failed: %x\n", sccb->hdr.response_code);
  rc = -EIO;
  goto out;
 }

 switch (sdias_evbuf.event_status) {
 case 130:
  TRACE("all stored\n");
  break;
 case 128:
  TRACE("part stored: %i\n", sdias_evbuf.blk_cnt);
  break;
 case 129:
  TRACE("no data\n");

 default:
  pr_err("Error from SCLP while copying hsa. Event status = %x\n",
         sdias_evbuf.event_status);
  rc = -EIO;
 }
out:
 mutex_unlock(&sdias_mutex);
 return rc;
}
