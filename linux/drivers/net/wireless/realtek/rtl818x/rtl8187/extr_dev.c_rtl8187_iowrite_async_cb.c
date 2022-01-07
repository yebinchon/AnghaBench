
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int context; } ;


 int kfree (int ) ;

__attribute__((used)) static void rtl8187_iowrite_async_cb(struct urb *urb)
{
 kfree(urb->context);
}
