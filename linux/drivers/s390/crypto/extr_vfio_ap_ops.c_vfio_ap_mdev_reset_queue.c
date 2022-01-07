
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue_status {int response_code; int queue_empty; } ;


 int AP_MKQID (unsigned int,unsigned int) ;



 int EBUSY ;
 int EIO ;
 int WARN_ON_ONCE (int) ;
 struct ap_queue_status ap_tapq (int,int *) ;
 struct ap_queue_status ap_zapq (int) ;
 int msleep (int) ;

int vfio_ap_mdev_reset_queue(unsigned int apid, unsigned int apqi,
        unsigned int retry)
{
 struct ap_queue_status status;
 int retry2 = 2;
 int apqn = AP_MKQID(apid, apqi);

 do {
  status = ap_zapq(apqn);
  switch (status.response_code) {
  case 129:
   while (!status.queue_empty && retry2--) {
    msleep(20);
    status = ap_tapq(apqn, ((void*)0));
   }
   WARN_ON_ONCE(retry2 <= 0);
   return 0;
  case 128:
  case 130:
   msleep(20);
   break;
  default:

   return -EIO;
  }
 } while (retry--);

 return -EBUSY;
}
