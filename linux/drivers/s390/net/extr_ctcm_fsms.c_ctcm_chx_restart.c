
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct channel {int timer; int cdev; int id; struct net_device* netdev; } ;
typedef int fsm_instance ;


 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,int ,int,int ) ;
 int CTCM_FUNTAIL ;
 int CTCM_TIME_5_SEC ;
 int CTC_DBF_NOTICE ;
 int CTC_EVENT_TIMER ;
 int CTC_STATE_STARTWAIT ;
 int EBUSY ;
 int TRACE ;
 int ccw_device_halt (int ,int ) ;
 int ctcm_ccw_check_rc (struct channel*,int,char*) ;
 int fsm_addtimer (int *,int ,int,struct channel*) ;
 int fsm_deltimer (int *) ;
 int fsm_getstate (int *) ;
 int fsm_newstate (int *,int) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void ctcm_chx_restart(fsm_instance *fi, int event, void *arg)
{
 struct channel *ch = arg;
 struct net_device *dev = ch->netdev;
 unsigned long saveflags = 0;
 int oldstate;
 int rc;

 CTCM_DBF_TEXT_(TRACE, CTC_DBF_NOTICE,
  "%s: %s[%d] of %s\n",
   CTCM_FUNTAIL, ch->id, event, dev->name);

 fsm_deltimer(&ch->timer);

 fsm_addtimer(&ch->timer, CTCM_TIME_5_SEC, CTC_EVENT_TIMER, ch);
 oldstate = fsm_getstate(fi);
 fsm_newstate(fi, CTC_STATE_STARTWAIT);
 if (event == CTC_EVENT_TIMER)
  spin_lock_irqsave(get_ccwdev_lock(ch->cdev), saveflags);



 rc = ccw_device_halt(ch->cdev, 0);
 if (event == CTC_EVENT_TIMER)
  spin_unlock_irqrestore(get_ccwdev_lock(ch->cdev), saveflags);
 if (rc != 0) {
  if (rc != -EBUSY) {
      fsm_deltimer(&ch->timer);
      fsm_newstate(fi, oldstate);
  }
  ctcm_ccw_check_rc(ch, rc, "HaltIO in ctcm_chx_restart");
 }
}
