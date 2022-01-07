
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wahc {unsigned int rpipes; int rpipe_bm; TYPE_1__* usb_iface; } ;
struct TYPE_4__ {int bmCharacteristics; } ;
struct wa_rpipe {int wa; TYPE_2__ descr; } ;
struct device {int dummy; } ;
typedef int gfp_t ;
struct TYPE_3__ {struct device dev; } ;


 int ENOMEM ;
 int ENXIO ;
 int __rpipe_get_descr (struct wahc*,TYPE_2__*,unsigned int) ;
 int dev_err (struct device*,char*,unsigned int,int) ;
 int kfree (struct wa_rpipe*) ;
 struct wa_rpipe* kzalloc (int,int ) ;
 unsigned int rpipe_get_idx (struct wahc*,unsigned int) ;
 int rpipe_init (struct wa_rpipe*) ;
 int rpipe_put_idx (struct wahc*,unsigned int) ;
 int set_bit (unsigned int,int ) ;
 int wa_get (struct wahc*) ;

__attribute__((used)) static int rpipe_get_idle(struct wa_rpipe **prpipe, struct wahc *wa, u8 crs,
     gfp_t gfp)
{
 int result;
 unsigned rpipe_idx;
 struct wa_rpipe *rpipe;
 struct device *dev = &wa->usb_iface->dev;

 rpipe = kzalloc(sizeof(*rpipe), gfp);
 if (rpipe == ((void*)0))
  return -ENOMEM;
 rpipe_init(rpipe);


 for (rpipe_idx = 0; rpipe_idx < wa->rpipes; rpipe_idx++) {
  rpipe_idx = rpipe_get_idx(wa, rpipe_idx);
  if (rpipe_idx >= wa->rpipes)
   break;
  result = __rpipe_get_descr(wa, &rpipe->descr, rpipe_idx);
  if (result < 0)
   dev_err(dev, "Can't get descriptor for rpipe %u: %d\n",
    rpipe_idx, result);
  else if ((rpipe->descr.bmCharacteristics & crs) != 0)
   goto found;
  rpipe_put_idx(wa, rpipe_idx);
 }
 *prpipe = ((void*)0);
 kfree(rpipe);
 return -ENXIO;

found:
 set_bit(rpipe_idx, wa->rpipe_bm);
 rpipe->wa = wa_get(wa);
 *prpipe = rpipe;
 return 0;
}
