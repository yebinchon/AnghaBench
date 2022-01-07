
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusb_dev {int refcnt; } ;


 int kref_init (int *) ;

__attribute__((used)) static inline void wusb_dev_init(struct wusb_dev *wusb_dev)
{
 kref_init(&wusb_dev->refcnt);

}
