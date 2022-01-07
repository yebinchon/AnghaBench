
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zfcp_fsf_req {int status; int req_id; struct fsf_status_read_buffer* data; TYPE_1__* adapter; } ;
struct TYPE_5__ {int be; } ;
struct zfcp_dbf_hba {TYPE_2__ u; int fsf_cmd; int fsf_req_status; int fsf_req_id; int id; int * tag; } ;
struct zfcp_dbf {int hba_lock; int hba; struct zfcp_dbf_hba hba_buf; } ;
struct TYPE_6__ {char bit_error; } ;
struct fsf_status_read_buffer {TYPE_3__ payload; } ;
struct fsf_bit_error_payload {int dummy; } ;
struct TYPE_4__ {struct zfcp_dbf* dbf; } ;


 int FSF_QTCB_UNSOLICITED_STATUS ;
 int ZFCP_DBF_HBA_BIT ;
 int ZFCP_DBF_TAG_LEN ;
 int debug_event (int ,int const,struct zfcp_dbf_hba*,int) ;
 int debug_level_enabled (int ,int const) ;
 int memcpy (int *,char*,int) ;
 int memset (struct zfcp_dbf_hba*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

void zfcp_dbf_hba_bit_err(char *tag, struct zfcp_fsf_req *req)
{
 struct zfcp_dbf *dbf = req->adapter->dbf;
 struct zfcp_dbf_hba *rec = &dbf->hba_buf;
 struct fsf_status_read_buffer *sr_buf = req->data;
 static int const level = 1;
 unsigned long flags;

 if (unlikely(!debug_level_enabled(dbf->hba, level)))
  return;

 spin_lock_irqsave(&dbf->hba_lock, flags);
 memset(rec, 0, sizeof(*rec));

 memcpy(rec->tag, tag, ZFCP_DBF_TAG_LEN);
 rec->id = ZFCP_DBF_HBA_BIT;
 rec->fsf_req_id = req->req_id;
 rec->fsf_req_status = req->status;
 rec->fsf_cmd = FSF_QTCB_UNSOLICITED_STATUS;
 memcpy(&rec->u.be, &sr_buf->payload.bit_error,
        sizeof(struct fsf_bit_error_payload));

 debug_event(dbf->hba, level, rec, sizeof(*rec));
 spin_unlock_irqrestore(&dbf->hba_lock, flags);
}
