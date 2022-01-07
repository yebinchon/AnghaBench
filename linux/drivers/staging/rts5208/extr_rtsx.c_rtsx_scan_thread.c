
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtsx_dev {int scanning_done; TYPE_1__* pci; int delay_wait; struct rtsx_chip* chip; } ;
struct rtsx_chip {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int CR_DRIVER_NAME ;
 int HZ ;
 int RTSX_STAT_DISCONNECT ;
 int complete_and_exit (int *,int ) ;
 int delay_use ;
 int dev_info (int *,char*,int ) ;
 int rtsx_chk_stat (struct rtsx_chip*,int ) ;
 int rtsx_to_host (struct rtsx_dev*) ;
 int scsi_scan_host (int ) ;
 int wait_event_interruptible_timeout (int ,int ,int) ;

__attribute__((used)) static int rtsx_scan_thread(void *__dev)
{
 struct rtsx_dev *dev = __dev;
 struct rtsx_chip *chip = dev->chip;


 if (delay_use > 0) {
  dev_info(&dev->pci->dev,
    "%s: waiting for device to settle before scanning\n",
    CR_DRIVER_NAME);
  wait_event_interruptible_timeout
   (dev->delay_wait,
    rtsx_chk_stat(chip, RTSX_STAT_DISCONNECT),
    delay_use * HZ);
 }


 if (!rtsx_chk_stat(chip, RTSX_STAT_DISCONNECT)) {
  scsi_scan_host(rtsx_to_host(dev));
  dev_info(&dev->pci->dev, "%s: device scan complete\n",
    CR_DRIVER_NAME);


 }

 complete_and_exit(&dev->scanning_done, 0);
}
