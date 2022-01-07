
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visorhba_devdata {int nextinsert; int privlock; struct scsipending* pending; } ;
struct scsipending {char cmdtype; int cmdrsp; int * sent; } ;


 int EBUSY ;
 int MAX_PENDING_REQUESTS ;
 int memset (int *,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int add_scsipending_entry(struct visorhba_devdata *devdata,
     char cmdtype, void *new)
{
 unsigned long flags;
 struct scsipending *entry;
 int insert_location;

 spin_lock_irqsave(&devdata->privlock, flags);
 insert_location = devdata->nextinsert;
 while (devdata->pending[insert_location].sent) {
  insert_location = (insert_location + 1) % MAX_PENDING_REQUESTS;
  if (insert_location == (int)devdata->nextinsert) {
   spin_unlock_irqrestore(&devdata->privlock, flags);
   return -EBUSY;
  }
 }

 entry = &devdata->pending[insert_location];
 memset(&entry->cmdrsp, 0, sizeof(entry->cmdrsp));
 entry->cmdtype = cmdtype;
 if (new)
  entry->sent = new;

 else
  entry->sent = &entry->cmdrsp;
 devdata->nextinsert = (insert_location + 1) % MAX_PENDING_REQUESTS;
 spin_unlock_irqrestore(&devdata->privlock, flags);

 return insert_location;
}
