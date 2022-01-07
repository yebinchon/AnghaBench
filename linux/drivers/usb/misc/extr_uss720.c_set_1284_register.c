
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uss720_async_request {int ref_count; } ;
struct parport_uss720_private {TYPE_1__* usbdev; } ;
struct parport {struct parport_uss720_private* private_data; } ;
typedef int gfp_t ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int destroy_async ;
 int dev_err (int *,char*,unsigned int,unsigned int) ;
 int kref_put (int *,int ) ;
 struct uss720_async_request* submit_async_request (struct parport_uss720_private*,int,int,unsigned int,int ,int ) ;

__attribute__((used)) static int set_1284_register(struct parport *pp, unsigned char reg, unsigned char val, gfp_t mem_flags)
{
 struct parport_uss720_private *priv;
 struct uss720_async_request *rq;

 if (!pp)
  return -EIO;
 priv = pp->private_data;
 rq = submit_async_request(priv, 4, 0x40, (((unsigned int)reg) << 8) | val, 0, mem_flags);
 if (!rq) {
  dev_err(&priv->usbdev->dev, "set_1284_register(%u,%u) failed",
   (unsigned int)reg, (unsigned int)val);
  return -EIO;
 }
 kref_put(&rq->ref_count, destroy_async);
 return 0;
}
