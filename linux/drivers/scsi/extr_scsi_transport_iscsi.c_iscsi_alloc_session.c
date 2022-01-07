
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_transport {int dummy; } ;
struct TYPE_2__ {int release; int * parent; } ;
struct iscsi_cls_session {int creator; int recovery_tmo; int recovery_tmo_sysfs_override; struct iscsi_cls_session* dd_data; TYPE_1__ dev; int lock; int scan_work; int unbind_work; int block_work; int unblock_work; int sess_list; int recovery_work; int state; struct iscsi_transport* transport; } ;
struct Scsi_Host {int shost_gendev; } ;


 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int ISCSI_DBG_TRANS_SESSION (struct iscsi_cls_session*,char*) ;
 int ISCSI_SESSION_FREE ;
 int __iscsi_block_session ;
 int __iscsi_unbind_session ;
 int __iscsi_unblock_session ;
 int device_initialize (TYPE_1__*) ;
 int iscsi_scan_session ;
 int iscsi_session_release ;
 struct iscsi_cls_session* kzalloc (int,int ) ;
 int scsi_host_get (struct Scsi_Host*) ;
 int session_recovery_timedout ;
 int spin_lock_init (int *) ;

struct iscsi_cls_session *
iscsi_alloc_session(struct Scsi_Host *shost, struct iscsi_transport *transport,
      int dd_size)
{
 struct iscsi_cls_session *session;

 session = kzalloc(sizeof(*session) + dd_size,
     GFP_KERNEL);
 if (!session)
  return ((void*)0);

 session->transport = transport;
 session->creator = -1;
 session->recovery_tmo = 120;
 session->recovery_tmo_sysfs_override = 0;
 session->state = ISCSI_SESSION_FREE;
 INIT_DELAYED_WORK(&session->recovery_work, session_recovery_timedout);
 INIT_LIST_HEAD(&session->sess_list);
 INIT_WORK(&session->unblock_work, __iscsi_unblock_session);
 INIT_WORK(&session->block_work, __iscsi_block_session);
 INIT_WORK(&session->unbind_work, __iscsi_unbind_session);
 INIT_WORK(&session->scan_work, iscsi_scan_session);
 spin_lock_init(&session->lock);


 scsi_host_get(shost);
 session->dev.parent = &shost->shost_gendev;
 session->dev.release = iscsi_session_release;
 device_initialize(&session->dev);
 if (dd_size)
  session->dd_data = &session[1];

 ISCSI_DBG_TRANS_SESSION(session, "Completed session allocation\n");
 return session;
}
