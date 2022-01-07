
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int dummy; } ;
struct wusb_dev {int devconnect_acked_work; struct wusbhc* wusbhc; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 struct wusb_dev* kzalloc (int,int ) ;
 int wusb_dev_free (struct wusb_dev*) ;
 int wusbhc_devconnect_acked_work ;

__attribute__((used)) static struct wusb_dev *wusb_dev_alloc(struct wusbhc *wusbhc)
{
 struct wusb_dev *wusb_dev;

 wusb_dev = kzalloc(sizeof(*wusb_dev), GFP_KERNEL);
 if (wusb_dev == ((void*)0))
  goto err;

 wusb_dev->wusbhc = wusbhc;

 INIT_WORK(&wusb_dev->devconnect_acked_work, wusbhc_devconnect_acked_work);

 return wusb_dev;
err:
 wusb_dev_free(wusb_dev);
 return ((void*)0);
}
