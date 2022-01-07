
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct procdata {scalar_t__ if_used; struct log_data* log_head; } ;
struct log_data {struct log_data* next; int usage_cnt; scalar_t__ proc_ctrl; } ;
struct inode {int dummy; } ;
struct file {int f_mode; scalar_t__ private_data; } ;
struct TYPE_3__ {struct procdata* proclog; } ;
typedef TYPE_1__ hysdn_card ;


 int FMODE_READ ;
 int FMODE_WRITE ;
 TYPE_1__* PDE_DATA (int ) ;
 int file_inode (struct file*) ;
 int hysdn_log_mutex ;
 int kfree (struct log_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
hysdn_log_close(struct inode *ino, struct file *filep)
{
 struct log_data *inf;
 struct procdata *pd;
 hysdn_card *card;
 int retval = 0;

 mutex_lock(&hysdn_log_mutex);
 if ((filep->f_mode & (FMODE_READ | FMODE_WRITE)) == FMODE_WRITE) {

  retval = 0;
 } else {


  inf = *((struct log_data **) filep->private_data);
  if (inf)
   pd = (struct procdata *) inf->proc_ctrl;
  else {

   card = PDE_DATA(file_inode(filep));
   pd = card->proclog;
  }
  if (pd)
   pd->if_used--;

  while (inf) {
   inf->usage_cnt--;
   inf = inf->next;
  }

  if (pd)
   if (pd->if_used <= 0)
    while (pd->log_head) {
     inf = pd->log_head;
     pd->log_head = pd->log_head->next;
     kfree(inf);
    }
 }
 mutex_unlock(&hysdn_log_mutex);

 return (retval);
}
