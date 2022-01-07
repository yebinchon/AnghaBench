
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusb_dev {int * wusb_cap_descr; int bos; } ;


 int kfree (int ) ;

__attribute__((used)) static void wusb_dev_bos_rm(struct wusb_dev *wusb_dev)
{
 kfree(wusb_dev->bos);
 wusb_dev->wusb_cap_descr = ((void*)0);
}
