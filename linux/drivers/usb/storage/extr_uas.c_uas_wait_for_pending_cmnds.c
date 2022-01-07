
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uas_dev_info {int data_urbs; int sense_urbs; int work; } ;


 int ETIME ;
 int HZ ;
 int flush_work (int *) ;
 unsigned long jiffies ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int uas_cmnd_list_empty (struct uas_dev_info*) ;
 int usb_wait_anchor_empty_timeout (int *,int) ;

__attribute__((used)) static int uas_wait_for_pending_cmnds(struct uas_dev_info *devinfo)
{
 unsigned long start_time;
 int r;

 start_time = jiffies;
 do {
  flush_work(&devinfo->work);

  r = usb_wait_anchor_empty_timeout(&devinfo->sense_urbs, 5000);
  if (r == 0)
   return -ETIME;

  r = usb_wait_anchor_empty_timeout(&devinfo->data_urbs, 500);
  if (r == 0)
   return -ETIME;

  if (time_after(jiffies, start_time + 5 * HZ))
   return -ETIME;
 } while (!uas_cmnd_list_empty(devinfo));

 return 0;
}
