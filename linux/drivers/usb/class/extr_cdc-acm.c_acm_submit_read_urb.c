
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acm {TYPE_1__* data; int read_urbs_free; int * read_urbs; } ;
typedef int gfp_t ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 int EPERM ;
 int dev_err (int *,char*,int,int) ;
 int dev_vdbg (int *,char*,int) ;
 int set_bit (int,int *) ;
 int test_and_clear_bit (int,int *) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int acm_submit_read_urb(struct acm *acm, int index, gfp_t mem_flags)
{
 int res;

 if (!test_and_clear_bit(index, &acm->read_urbs_free))
  return 0;

 res = usb_submit_urb(acm->read_urbs[index], mem_flags);
 if (res) {
  if (res != -EPERM && res != -ENODEV) {
   dev_err(&acm->data->dev,
    "urb %d failed submission with %d\n",
    index, res);
  }
  set_bit(index, &acm->read_urbs_free);
  return res;
 } else {
  dev_vdbg(&acm->data->dev, "submitted urb %d\n", index);
 }

 return 0;
}
