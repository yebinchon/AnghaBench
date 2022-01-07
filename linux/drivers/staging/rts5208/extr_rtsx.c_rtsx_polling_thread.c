
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xd_info {scalar_t__ cleanup_counter; } ;
struct sd_info {scalar_t__ cleanup_counter; } ;
struct rtsx_dev {int polling_exit; int dev_mutex; TYPE_1__* pci; struct rtsx_chip* chip; } ;
struct ms_info {scalar_t__ cleanup_counter; } ;
struct rtsx_chip {struct ms_info ms_card; struct xd_info xd_card; struct sd_info sd_card; } ;
struct TYPE_2__ {int dev; } ;


 int POLLING_INTERVAL ;
 int RTSX_STAT_DISCONNECT ;
 int TASK_INTERRUPTIBLE ;
 int complete_and_exit (int *,int ) ;
 int delay_use ;
 int dev_info (int *,char*) ;
 int msecs_to_jiffies (int ) ;
 int mspro_polling_format_status (struct rtsx_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rtsx_chk_stat (struct rtsx_chip*,int ) ;
 int rtsx_polling_func (struct rtsx_chip*) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;
 int wait_timeout (int) ;

__attribute__((used)) static int rtsx_polling_thread(void *__dev)
{
 struct rtsx_dev *dev = __dev;
 struct rtsx_chip *chip = dev->chip;
 struct sd_info *sd_card = &chip->sd_card;
 struct xd_info *xd_card = &chip->xd_card;
 struct ms_info *ms_card = &chip->ms_card;

 sd_card->cleanup_counter = 0;
 xd_card->cleanup_counter = 0;
 ms_card->cleanup_counter = 0;


 wait_timeout((delay_use + 5) * 1000);

 for (;;) {
  set_current_state(TASK_INTERRUPTIBLE);
  schedule_timeout(msecs_to_jiffies(POLLING_INTERVAL));


  mutex_lock(&dev->dev_mutex);


  if (rtsx_chk_stat(chip, RTSX_STAT_DISCONNECT)) {
   dev_info(&dev->pci->dev, "-- rtsx-polling exiting\n");
   mutex_unlock(&dev->dev_mutex);
   break;
  }

  mutex_unlock(&dev->dev_mutex);

  mspro_polling_format_status(chip);


  mutex_lock(&dev->dev_mutex);

  rtsx_polling_func(chip);


  mutex_unlock(&dev->dev_mutex);
 }

 complete_and_exit(&dev->polling_exit, 0);
}
