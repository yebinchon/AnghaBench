
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * idal_buf; } ;
struct tape_device {int required_tapemarks; TYPE_1__ char_data; } ;
struct inode {int dummy; } ;
struct file {int * private_data; } ;


 int DBF_EVENT (int,char*,int) ;
 int MTREW ;
 int MTWEOF ;
 int idal_buffer_free (int *) ;
 int iminor (struct inode*) ;
 scalar_t__ tape_mtop (struct tape_device*,int ,int) ;
 int tape_put_device (struct tape_device*) ;
 int tape_release (struct tape_device*) ;
 int tape_std_terminate_write (struct tape_device*) ;

__attribute__((used)) static int
tapechar_release(struct inode *inode, struct file *filp)
{
 struct tape_device *device;

 DBF_EVENT(6, "TCHAR:release: %x\n", iminor(inode));
 device = (struct tape_device *) filp->private_data;






 if ((iminor(inode) & 1) != 0) {
  if (device->required_tapemarks)
   tape_std_terminate_write(device);
  tape_mtop(device, MTREW, 1);
 } else {
  if (device->required_tapemarks > 1) {
   if (tape_mtop(device, MTWEOF, 1) == 0)
    device->required_tapemarks--;
  }
 }

 if (device->char_data.idal_buf != ((void*)0)) {
  idal_buffer_free(device->char_data.idal_buf);
  device->char_data.idal_buf = ((void*)0);
 }
 tape_release(device);
 filp->private_data = ((void*)0);
 tape_put_device(device);

 return 0;
}
