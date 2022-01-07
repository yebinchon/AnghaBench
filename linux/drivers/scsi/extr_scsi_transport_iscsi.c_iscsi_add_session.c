
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_session {unsigned int target_id; int ida_used; int sess_list; int dev; int sid; } ;


 int GFP_KERNEL ;
 int ISCSI_DBG_TRANS_SESSION (struct iscsi_cls_session*,char*) ;
 int ISCSI_KEVENT_CREATE_SESSION ;
 unsigned int ISCSI_MAX_TARGET ;
 int KERN_ERR ;
 int atomic_add_return (int,int *) ;
 int dev_set_name (int *,char*,int ) ;
 int device_add (int *) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,unsigned int) ;
 int iscsi_cls_session_printk (int ,struct iscsi_cls_session*,char*) ;
 int iscsi_sess_ida ;
 int iscsi_session_event (struct iscsi_cls_session*,int ) ;
 int iscsi_session_nr ;
 int list_add (int *,int *) ;
 int sesslist ;
 int sesslock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int transport_register_device (int *) ;

int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
{
 unsigned long flags;
 int id = 0;
 int err;

 session->sid = atomic_add_return(1, &iscsi_session_nr);

 if (target_id == ISCSI_MAX_TARGET) {
  id = ida_simple_get(&iscsi_sess_ida, 0, 0, GFP_KERNEL);

  if (id < 0) {
   iscsi_cls_session_printk(KERN_ERR, session,
     "Failure in Target ID Allocation\n");
   return id;
  }
  session->target_id = (unsigned int)id;
  session->ida_used = 1;
 } else
  session->target_id = target_id;

 dev_set_name(&session->dev, "session%u", session->sid);
 err = device_add(&session->dev);
 if (err) {
  iscsi_cls_session_printk(KERN_ERR, session,
      "could not register session's dev\n");
  goto release_ida;
 }
 transport_register_device(&session->dev);

 spin_lock_irqsave(&sesslock, flags);
 list_add(&session->sess_list, &sesslist);
 spin_unlock_irqrestore(&sesslock, flags);

 iscsi_session_event(session, ISCSI_KEVENT_CREATE_SESSION);
 ISCSI_DBG_TRANS_SESSION(session, "Completed session adding\n");
 return 0;

release_ida:
 if (session->ida_used)
  ida_simple_remove(&iscsi_sess_ida, session->target_id);

 return err;
}
