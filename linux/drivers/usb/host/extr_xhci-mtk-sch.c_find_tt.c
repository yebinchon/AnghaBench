
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_tt {struct mu3h_sch_tt** hcpriv; TYPE_1__* hub; scalar_t__ multi; } ;
struct usb_device {int ttport; struct usb_tt* tt; } ;
struct mu3h_sch_tt {unsigned int tt_port; struct usb_tt* usb_tt; int ep_list; } ;
struct TYPE_2__ {int maxchild; } ;


 int ENOMEM ;
 struct mu3h_sch_tt* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct mu3h_sch_tt** kcalloc (int ,int,int ) ;
 int kfree (struct mu3h_sch_tt**) ;
 struct mu3h_sch_tt* kzalloc (int,int ) ;

__attribute__((used)) static struct mu3h_sch_tt *find_tt(struct usb_device *udev)
{
 struct usb_tt *utt = udev->tt;
 struct mu3h_sch_tt *tt, **tt_index, **ptt;
 unsigned int port;
 bool allocated_index = 0;

 if (!utt)
  return ((void*)0);






 tt_index = ((void*)0);
 if (utt->multi) {
  tt_index = utt->hcpriv;
  if (!tt_index) {
   tt_index = kcalloc(utt->hub->maxchild,
     sizeof(*tt_index), GFP_KERNEL);
   if (!tt_index)
    return ERR_PTR(-ENOMEM);
   utt->hcpriv = tt_index;
   allocated_index = 1;
  }
  port = udev->ttport - 1;
  ptt = &tt_index[port];
 } else {
  port = 0;
  ptt = (struct mu3h_sch_tt **) &utt->hcpriv;
 }

 tt = *ptt;
 if (!tt) {
  tt = kzalloc(sizeof(*tt), GFP_KERNEL);
  if (!tt) {
   if (allocated_index) {
    utt->hcpriv = ((void*)0);
    kfree(tt_index);
   }
   return ERR_PTR(-ENOMEM);
  }
  INIT_LIST_HEAD(&tt->ep_list);
  tt->usb_tt = utt;
  tt->tt_port = port;
  *ptt = tt;
 }

 return tt;
}
