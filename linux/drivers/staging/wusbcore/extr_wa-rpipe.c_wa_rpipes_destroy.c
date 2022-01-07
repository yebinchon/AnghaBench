
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wahc {int rpipe_bm; int rpipes; TYPE_1__* usb_iface; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int WARN_ON (int) ;
 int bitmap_empty (int ,int ) ;
 int bitmap_free (int ) ;
 int dev_err (struct device*,char*,int ,int ) ;

void wa_rpipes_destroy(struct wahc *wa)
{
 struct device *dev = &wa->usb_iface->dev;

 if (!bitmap_empty(wa->rpipe_bm, wa->rpipes)) {
  WARN_ON(1);
  dev_err(dev, "BUG: pipes not released on exit: %*pb\n",
   wa->rpipes, wa->rpipe_bm);
 }
 bitmap_free(wa->rpipe_bm);
}
