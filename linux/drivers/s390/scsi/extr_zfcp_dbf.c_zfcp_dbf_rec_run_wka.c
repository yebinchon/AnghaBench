
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct zfcp_fc_wka_port {int d_id; int status; TYPE_1__* adapter; } ;
struct TYPE_5__ {int rec_count; int rec_action; int rec_step; int rec_status; int fsf_req_id; } ;
struct TYPE_6__ {TYPE_2__ run; } ;
struct zfcp_dbf_rec {TYPE_3__ u; int lun; int d_id; int port_status; int tag; int id; } ;
struct zfcp_dbf {int rec_lock; int rec; struct zfcp_dbf_rec rec_buf; } ;
struct TYPE_4__ {struct zfcp_dbf* dbf; } ;


 int ZFCP_DBF_INVALID_LUN ;
 int ZFCP_DBF_REC_RUN ;
 int ZFCP_DBF_TAG_LEN ;
 int debug_event (int ,int const,struct zfcp_dbf_rec*,int) ;
 int debug_level_enabled (int ,int const) ;
 int memcpy (int ,char*,int ) ;
 int memset (struct zfcp_dbf_rec*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

void zfcp_dbf_rec_run_wka(char *tag, struct zfcp_fc_wka_port *wka_port,
     u64 req_id)
{
 struct zfcp_dbf *dbf = wka_port->adapter->dbf;
 struct zfcp_dbf_rec *rec = &dbf->rec_buf;
 static int const level = 1;
 unsigned long flags;

 if (unlikely(!debug_level_enabled(dbf->rec, level)))
  return;

 spin_lock_irqsave(&dbf->rec_lock, flags);
 memset(rec, 0, sizeof(*rec));

 rec->id = ZFCP_DBF_REC_RUN;
 memcpy(rec->tag, tag, ZFCP_DBF_TAG_LEN);
 rec->port_status = wka_port->status;
 rec->d_id = wka_port->d_id;
 rec->lun = ZFCP_DBF_INVALID_LUN;

 rec->u.run.fsf_req_id = req_id;
 rec->u.run.rec_status = ~0;
 rec->u.run.rec_step = ~0;
 rec->u.run.rec_action = ~0;
 rec->u.run.rec_count = ~0;

 debug_event(dbf->rec, level, rec, sizeof(*rec));
 spin_unlock_irqrestore(&dbf->rec_lock, flags);
}
