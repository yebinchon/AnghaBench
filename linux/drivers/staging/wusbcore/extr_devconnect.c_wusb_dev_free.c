
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusb_dev {int dummy; } ;


 int kfree (struct wusb_dev*) ;

__attribute__((used)) static void wusb_dev_free(struct wusb_dev *wusb_dev)
{
 kfree(wusb_dev);
}
