
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ac_suspended; int usb_suspended; int suspended_change; } ;
struct abx500_chargalg {int dev; int chargalg_work; int chargalg_wq; TYPE_1__ susp_status; } ;
typedef int ssize_t ;


 int dev_info (int ,char*) ;
 int kstrtol (char const*,int,long*) ;
 int queue_work (int ,int *) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t abx500_chargalg_en_store(struct abx500_chargalg *di,
 const char *buf, size_t length)
{
 long int param;
 int ac_usb;
 int ret;

 ret = kstrtol(buf, 10, &param);
 if (ret < 0)
  return ret;

 ac_usb = param;
 switch (ac_usb) {
 case 0:

  di->susp_status.ac_suspended = 1;
  di->susp_status.usb_suspended = 1;
  di->susp_status.suspended_change = 1;

  queue_work(di->chargalg_wq,
   &di->chargalg_work);
  break;
 case 1:

  di->susp_status.ac_suspended = 0;
  di->susp_status.suspended_change = 1;

  queue_work(di->chargalg_wq,
   &di->chargalg_work);
  break;
 case 2:

  di->susp_status.usb_suspended = 0;
  di->susp_status.suspended_change = 1;

  queue_work(di->chargalg_wq,
   &di->chargalg_work);
  break;
 default:
  dev_info(di->dev, "Wrong input\n"
   "Enter 0. Disable AC/USB Charging\n"
   "1. Enable AC charging\n"
   "2. Enable USB Charging\n");
 };
 return strlen(buf);
}
