
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wusbhc {TYPE_1__* wuie_host_info; } ;
struct wusb_ckhdid {int data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct wusb_ckhdid CHID; } ;


 int sprintf (char*,char*,int ) ;
 struct wusbhc* usbhc_dev_to_wusbhc (struct device*) ;
 struct wusb_ckhdid wusb_ckhdid_zero ;

__attribute__((used)) static ssize_t wusb_chid_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct wusbhc *wusbhc = usbhc_dev_to_wusbhc(dev);
 const struct wusb_ckhdid *chid;

 if (wusbhc->wuie_host_info != ((void*)0))
  chid = &wusbhc->wuie_host_info->CHID;
 else
  chid = &wusb_ckhdid_zero;

 return sprintf(buf, "%16ph\n", chid->data);
}
