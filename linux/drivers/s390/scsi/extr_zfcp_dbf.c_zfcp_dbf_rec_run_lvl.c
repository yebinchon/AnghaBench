
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct zfcp_erp_action {TYPE_3__* adapter; TYPE_4__* port; int sdev; int type; int step; int status; int fsf_req_id; } ;
struct TYPE_6__ {void* rec_count; int rec_action; int rec_step; int rec_status; int fsf_req_id; } ;
struct TYPE_7__ {TYPE_1__ run; } ;
struct zfcp_dbf_rec {TYPE_2__ u; int tag; int id; } ;
struct zfcp_dbf {int rec_lock; int rec; struct zfcp_dbf_rec rec_buf; } ;
struct TYPE_10__ {int erp_counter; } ;
struct TYPE_9__ {int erp_counter; } ;
struct TYPE_8__ {int erp_counter; struct zfcp_dbf* dbf; } ;


 int ZFCP_DBF_REC_RUN ;
 int ZFCP_DBF_TAG_LEN ;
 void* atomic_read (int *) ;
 int debug_event (int ,int,struct zfcp_dbf_rec*,int) ;
 int debug_level_enabled (int ,int) ;
 int memcpy (int ,char*,int ) ;
 int memset (struct zfcp_dbf_rec*,int ,int) ;
 TYPE_5__* sdev_to_zfcp (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int zfcp_dbf_set_common (struct zfcp_dbf_rec*,TYPE_3__*,TYPE_4__*,int ) ;

void zfcp_dbf_rec_run_lvl(int level, char *tag, struct zfcp_erp_action *erp)
{
 struct zfcp_dbf *dbf = erp->adapter->dbf;
 struct zfcp_dbf_rec *rec = &dbf->rec_buf;
 unsigned long flags;

 if (!debug_level_enabled(dbf->rec, level))
  return;

 spin_lock_irqsave(&dbf->rec_lock, flags);
 memset(rec, 0, sizeof(*rec));

 rec->id = ZFCP_DBF_REC_RUN;
 memcpy(rec->tag, tag, ZFCP_DBF_TAG_LEN);
 zfcp_dbf_set_common(rec, erp->adapter, erp->port, erp->sdev);

 rec->u.run.fsf_req_id = erp->fsf_req_id;
 rec->u.run.rec_status = erp->status;
 rec->u.run.rec_step = erp->step;
 rec->u.run.rec_action = erp->type;

 if (erp->sdev)
  rec->u.run.rec_count =
   atomic_read(&sdev_to_zfcp(erp->sdev)->erp_counter);
 else if (erp->port)
  rec->u.run.rec_count = atomic_read(&erp->port->erp_counter);
 else
  rec->u.run.rec_count = atomic_read(&erp->adapter->erp_counter);

 debug_event(dbf->rec, level, rec, sizeof(*rec));
 spin_unlock_irqrestore(&dbf->rec_lock, flags);
}
