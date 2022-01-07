
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct AdapterCtlBlk {int scsi_host; } ;


 int DBG_1 ;
 int DC395x_LOCK_IO (int ,unsigned long) ;
 int DC395x_UNLOCK_IO (int ,unsigned long) ;
 struct AdapterCtlBlk* acb ;
 int dprintkdbg (int ,char*,struct AdapterCtlBlk*) ;
 struct AdapterCtlBlk* from_timer (int ,struct timer_list*,int ) ;
 int waiting_process_next (struct AdapterCtlBlk*) ;
 int waiting_timer ;

__attribute__((used)) static void waiting_timeout(struct timer_list *t)
{
 unsigned long flags;
 struct AdapterCtlBlk *acb = from_timer(acb, t, waiting_timer);
 dprintkdbg(DBG_1,
  "waiting_timeout: Queue woken up by timer. acb=%p\n", acb);
 DC395x_LOCK_IO(acb->scsi_host, flags);
 waiting_process_next(acb);
 DC395x_UNLOCK_IO(acb->scsi_host, flags);
}
