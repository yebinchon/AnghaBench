
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_string {int id; scalar_t__ s; } ;
struct usb_gadget_strings {struct usb_string* strings; } ;
struct usb_composite_dev {TYPE_1__* gadget; } ;
struct ffs_data {scalar_t__ state; TYPE_1__* gadget; struct usb_gadget_strings** stringtabs; TYPE_2__* ep0req; int strings_count; int flags; } ;
struct TYPE_4__ {struct ffs_data* context; int complete; } ;
struct TYPE_3__ {int ep0; } ;


 int EBADFD ;
 int ENOMEM ;
 int ENTER () ;
 scalar_t__ FFS_ACTIVE ;
 int FFS_FL_BOUND ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int ffs_data_get (struct ffs_data*) ;
 int ffs_ep0_complete ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 TYPE_2__* usb_ep_alloc_request (int ,int ) ;
 int usb_string_ids_n (struct usb_composite_dev*,int ) ;

__attribute__((used)) static int functionfs_bind(struct ffs_data *ffs, struct usb_composite_dev *cdev)
{
 struct usb_gadget_strings **lang;
 int first_id;

 ENTER();

 if (WARN_ON(ffs->state != FFS_ACTIVE
   || test_and_set_bit(FFS_FL_BOUND, &ffs->flags)))
  return -EBADFD;

 first_id = usb_string_ids_n(cdev, ffs->strings_count);
 if (unlikely(first_id < 0))
  return first_id;

 ffs->ep0req = usb_ep_alloc_request(cdev->gadget->ep0, GFP_KERNEL);
 if (unlikely(!ffs->ep0req))
  return -ENOMEM;
 ffs->ep0req->complete = ffs_ep0_complete;
 ffs->ep0req->context = ffs;

 lang = ffs->stringtabs;
 if (lang) {
  for (; *lang; ++lang) {
   struct usb_string *str = (*lang)->strings;
   int id = first_id;
   for (; str->s; ++id, ++str)
    str->id = id;
  }
 }

 ffs->gadget = cdev->gadget;
 ffs_data_get(ffs);
 return 0;
}
