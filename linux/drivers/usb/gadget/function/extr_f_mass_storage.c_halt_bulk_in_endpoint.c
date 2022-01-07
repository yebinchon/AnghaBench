
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_dev {int bulk_in; } ;


 int EAGAIN ;
 int EINTR ;
 int VDBG (struct fsg_dev*,char*) ;
 int WARNING (struct fsg_dev*,char*,int) ;
 int fsg_set_halt (struct fsg_dev*,int ) ;
 scalar_t__ msleep_interruptible (int) ;
 int usb_ep_set_halt (int ) ;

__attribute__((used)) static int halt_bulk_in_endpoint(struct fsg_dev *fsg)
{
 int rc;

 rc = fsg_set_halt(fsg, fsg->bulk_in);
 if (rc == -EAGAIN)
  VDBG(fsg, "delayed bulk-in endpoint halt\n");
 while (rc != 0) {
  if (rc != -EAGAIN) {
   WARNING(fsg, "usb_ep_set_halt -> %d\n", rc);
   rc = 0;
   break;
  }


  if (msleep_interruptible(100) != 0)
   return -EINTR;
  rc = usb_ep_set_halt(fsg->bulk_in);
 }
 return rc;
}
