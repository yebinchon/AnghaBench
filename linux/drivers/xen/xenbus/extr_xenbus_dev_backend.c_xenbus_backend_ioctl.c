
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int CAP_SYS_ADMIN ;
 long ENODEV ;
 long ENOTTY ;
 long EPERM ;


 int capable (int ) ;
 long xen_store_evtchn ;
 long xenbus_alloc (unsigned long) ;

__attribute__((used)) static long xenbus_backend_ioctl(struct file *file, unsigned int cmd,
     unsigned long data)
{
 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 switch (cmd) {
 case 129:
  if (xen_store_evtchn > 0)
   return xen_store_evtchn;
  return -ENODEV;
 case 128:
  return xenbus_alloc(data);
 default:
  return -ENOTTY;
 }
}
