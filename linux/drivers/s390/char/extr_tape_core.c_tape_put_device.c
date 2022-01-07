
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_device {struct tape_device* modeset_byte; int ref_count; } ;


 int BUG_ON (int) ;
 int DBF_EVENT (int,char*,struct tape_device*,int) ;
 int atomic_dec_return (int *) ;
 int kfree (struct tape_device*) ;

void
tape_put_device(struct tape_device *device)
{
 int count;

 count = atomic_dec_return(&device->ref_count);
 DBF_EVENT(4, "tape_put_device(%p) -> %i\n", device, count);
 BUG_ON(count < 0);
 if (count == 0) {
  kfree(device->modeset_byte);
  kfree(device);
 }
}
