
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct zfcp_fsf_req {int req_id; int issued; int status; TYPE_2__* qtcb; TYPE_1__* adapter; } ;
struct TYPE_7__ {int fsf_status_qual; int prot_status_qual; int lun_handle; int port_handle; int fsf_status; int prot_status; int req_issued; } ;
struct TYPE_8__ {TYPE_3__ res; } ;
struct zfcp_dbf_hba {scalar_t__ fsf_cmd; int pl_len; TYPE_4__ u; int fsf_seq_no; int fsf_req_status; int fsf_req_id; int id; int tag; } ;
struct zfcp_dbf {int hba_lock; int hba; struct zfcp_dbf_hba hba_buf; } ;
struct fsf_qtcb_prefix {char prot_status_qual; int prot_status; int req_seq_no; } ;
struct fsf_qtcb_header {scalar_t__ fsf_command; char fsf_status_qual; int log_start; int log_length; int lun_handle; int port_handle; int fsf_status; } ;
struct TYPE_6__ {struct fsf_qtcb_header header; struct fsf_qtcb_prefix prefix; } ;
struct TYPE_5__ {struct zfcp_dbf* dbf; } ;


 int FSF_PROT_STATUS_QUAL_SIZE ;
 scalar_t__ FSF_QTCB_FCP_CMND ;
 int FSF_STATUS_QUALIFIER_SIZE ;
 int ZFCP_DBF_HBA_RES ;
 int ZFCP_DBF_TAG_LEN ;
 int debug_event (int ,int,struct zfcp_dbf_hba*,int) ;
 int memcpy (int ,char*,int ) ;
 int memset (struct zfcp_dbf_hba*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int zfcp_dbf_pl_write (struct zfcp_dbf*,char*,int ,char*,int ) ;

void zfcp_dbf_hba_fsf_res(char *tag, int level, struct zfcp_fsf_req *req)
{
 struct zfcp_dbf *dbf = req->adapter->dbf;
 struct fsf_qtcb_prefix *q_pref = &req->qtcb->prefix;
 struct fsf_qtcb_header *q_head = &req->qtcb->header;
 struct zfcp_dbf_hba *rec = &dbf->hba_buf;
 unsigned long flags;

 spin_lock_irqsave(&dbf->hba_lock, flags);
 memset(rec, 0, sizeof(*rec));

 memcpy(rec->tag, tag, ZFCP_DBF_TAG_LEN);
 rec->id = ZFCP_DBF_HBA_RES;
 rec->fsf_req_id = req->req_id;
 rec->fsf_req_status = req->status;
 rec->fsf_cmd = q_head->fsf_command;
 rec->fsf_seq_no = q_pref->req_seq_no;
 rec->u.res.req_issued = req->issued;
 rec->u.res.prot_status = q_pref->prot_status;
 rec->u.res.fsf_status = q_head->fsf_status;
 rec->u.res.port_handle = q_head->port_handle;
 rec->u.res.lun_handle = q_head->lun_handle;

 memcpy(rec->u.res.prot_status_qual, &q_pref->prot_status_qual,
        FSF_PROT_STATUS_QUAL_SIZE);
 memcpy(rec->u.res.fsf_status_qual, &q_head->fsf_status_qual,
        FSF_STATUS_QUALIFIER_SIZE);

 if (q_head->fsf_command != FSF_QTCB_FCP_CMND) {
  rec->pl_len = q_head->log_length;
  zfcp_dbf_pl_write(dbf, (char *)q_pref + q_head->log_start,
      rec->pl_len, "fsf_res", req->req_id);
 }

 debug_event(dbf->hba, level, rec, sizeof(*rec));
 spin_unlock_irqrestore(&dbf->hba_lock, flags);
}
