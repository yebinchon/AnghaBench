
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtsx_dev {int dev_mutex; struct rtsx_chip* chip; int scanning_done; int delay_wait; } ;
struct rtsx_chip {TYPE_1__* srb; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int result; int (* scsi_done ) (TYPE_1__*) ;} ;


 int DID_NO_CONNECT ;
 int RTSX_STAT_DISCONNECT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtsx_set_stat (struct rtsx_chip*,int ) ;
 struct Scsi_Host* rtsx_to_host (struct rtsx_dev*) ;
 int scsi_lock (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int scsi_unlock (struct Scsi_Host*) ;
 int stub1 (TYPE_1__*) ;
 int wait_for_completion (int *) ;
 int wait_timeout (int) ;
 int wake_up (int *) ;

__attribute__((used)) static void quiesce_and_remove_host(struct rtsx_dev *dev)
{
 struct Scsi_Host *host = rtsx_to_host(dev);
 struct rtsx_chip *chip = dev->chip;





 mutex_lock(&dev->dev_mutex);
 scsi_lock(host);
 rtsx_set_stat(chip, RTSX_STAT_DISCONNECT);
 scsi_unlock(host);
 mutex_unlock(&dev->dev_mutex);
 wake_up(&dev->delay_wait);
 wait_for_completion(&dev->scanning_done);


 wait_timeout(100);






 mutex_lock(&dev->dev_mutex);
 if (chip->srb) {
  chip->srb->result = DID_NO_CONNECT << 16;
  scsi_lock(host);
  chip->srb->scsi_done(dev->chip->srb);
  chip->srb = ((void*)0);
  scsi_unlock(host);
 }
 mutex_unlock(&dev->dev_mutex);


 scsi_remove_host(host);
}
