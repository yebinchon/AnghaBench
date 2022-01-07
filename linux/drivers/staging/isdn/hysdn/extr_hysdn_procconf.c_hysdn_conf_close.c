
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int f_mode; struct conf_writedata* private_data; TYPE_1__* f_cred; } ;
struct conf_writedata {scalar_t__ state; int card; } ;
struct TYPE_6__ {int debug_flags; } ;
typedef TYPE_2__ hysdn_card ;
struct TYPE_5__ {int fsgid; int fsuid; } ;


 scalar_t__ CONF_STATE_POF ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int LOG_PROC_ALL ;
 int LOG_PROC_OPEN ;
 TYPE_2__* PDE_DATA (struct inode*) ;
 int hysdn_addlog (TYPE_2__*,char*,int ,int ,int) ;
 int hysdn_conf_mutex ;
 int kfree (struct conf_writedata*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pof_write_close (int ) ;

__attribute__((used)) static int
hysdn_conf_close(struct inode *ino, struct file *filep)
{
 hysdn_card *card;
 struct conf_writedata *cnf;
 int retval = 0;

 mutex_lock(&hysdn_conf_mutex);
 card = PDE_DATA(ino);
 if (card->debug_flags & (LOG_PROC_OPEN | LOG_PROC_ALL))
  hysdn_addlog(card, "config close for uid=%d gid=%d mode=0x%x",
        filep->f_cred->fsuid, filep->f_cred->fsgid,
        filep->f_mode);

 if ((filep->f_mode & (FMODE_READ | FMODE_WRITE)) == FMODE_WRITE) {

  if (filep->private_data) {
   cnf = filep->private_data;

   if (cnf->state == CONF_STATE_POF)
    retval = pof_write_close(cnf->card);
   kfree(filep->private_data);

  }
 } else if ((filep->f_mode & (FMODE_READ | FMODE_WRITE)) == FMODE_READ) {


  kfree(filep->private_data);
 }
 mutex_unlock(&hysdn_conf_mutex);
 return (retval);
}
