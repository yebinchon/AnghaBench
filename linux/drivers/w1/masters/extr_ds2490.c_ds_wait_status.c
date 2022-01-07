
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds_status {int status; } ;
struct ds_device {int * st_buf; int * ep; } ;


 size_t EP_STATUS ;
 int ST_EPOF ;
 int ST_IDLE ;
 int ds_dump_status (struct ds_device*,int *,int) ;
 int ds_recv_status (struct ds_device*,struct ds_status*,int) ;
 int ds_reset_device (struct ds_device*) ;
 int pr_info (char*) ;
 int printk (char*,...) ;

__attribute__((used)) static int ds_wait_status(struct ds_device *dev, struct ds_status *st)
{
 int err, count = 0;

 do {
  st->status = 0;
  err = ds_recv_status(dev, st, 0);
 } while (!(st->status & ST_IDLE) && !(err < 0) && ++count < 100);

 if (err >= 16 && st->status & ST_EPOF) {
  pr_info("Resetting device after ST_EPOF.\n");
  ds_reset_device(dev);

  count = 101;
 }





 if (err > 16 || count >= 100 || err < 0)
  ds_dump_status(dev, dev->st_buf, err);





 if (count >= 100 || err < 0)
  return -1;
 else
  return 0;
}
