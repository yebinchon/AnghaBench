
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tty_dev {int priv_dev; int (* recv_func ) (int ,int ) ;struct gdm** gdm; } ;
struct TYPE_3__ {int * ops; } ;
struct gdm {int index; int minor; struct tty_dev* tty_dev; TYPE_1__ port; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GDM_TTY_MINOR ;
 int GFP_KERNEL ;
 int MAX_ISSUE_NUM ;
 int TTY_MAX_COUNT ;
 int * gdm_driver ;
 int gdm_port_ops ;
 struct gdm*** gdm_table ;
 int gdm_table_lock ;
 int gdm_tty_recv_complete ;
 int kfree (struct gdm*) ;
 struct gdm* kmalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,int ) ;
 int tty_port_init (TYPE_1__*) ;
 int tty_port_register_device (TYPE_1__*,int ,int,struct device*) ;

int register_lte_tty_device(struct tty_dev *tty_dev, struct device *device)
{
 struct gdm *gdm;
 int i;
 int j;

 for (i = 0; i < TTY_MAX_COUNT; i++) {
  gdm = kmalloc(sizeof(*gdm), GFP_KERNEL);
  if (!gdm)
   return -ENOMEM;

  mutex_lock(&gdm_table_lock);
  for (j = 0; j < GDM_TTY_MINOR; j++) {
   if (!gdm_table[i][j])
    break;
  }

  if (j == GDM_TTY_MINOR) {
   kfree(gdm);
   mutex_unlock(&gdm_table_lock);
   return -EINVAL;
  }

  gdm_table[i][j] = gdm;
  mutex_unlock(&gdm_table_lock);

  tty_dev->gdm[i] = gdm;
  tty_port_init(&gdm->port);

  gdm->port.ops = &gdm_port_ops;
  gdm->index = i;
  gdm->minor = j;
  gdm->tty_dev = tty_dev;

  tty_port_register_device(&gdm->port, gdm_driver[i],
      gdm->minor, device);
 }

 for (i = 0; i < MAX_ISSUE_NUM; i++)
  gdm->tty_dev->recv_func(gdm->tty_dev->priv_dev,
     gdm_tty_recv_complete);

 return 0;
}
