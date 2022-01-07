
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rio_mport {TYPE_2__* outb_msg; TYPE_1__* ops; int * riores; } ;
struct resource {int dummy; } ;
struct TYPE_4__ {void (* mcback ) (struct rio_mport*,void*,int,int) ;struct resource* res; } ;
struct TYPE_3__ {int (* open_outb_mbox ) (struct rio_mport*,void*,int,int) ;} ;


 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 size_t RIO_OUTB_MBOX_RESOURCE ;
 int kfree (struct resource*) ;
 struct resource* kzalloc (int,int ) ;
 int release_resource (struct resource*) ;
 int request_resource (int *,struct resource*) ;
 int rio_init_mbox_res (struct resource*,int,int) ;
 int stub1 (struct rio_mport*,void*,int,int) ;

int rio_request_outb_mbox(struct rio_mport *mport,
     void *dev_id,
     int mbox,
     int entries,
     void (*moutb) (struct rio_mport * mport, void *dev_id, int mbox, int slot))
{
 int rc = -ENOSYS;
 struct resource *res;

 if (!mport->ops->open_outb_mbox)
  goto out;

 res = kzalloc(sizeof(*res), GFP_KERNEL);
 if (res) {
  rio_init_mbox_res(res, mbox, mbox);


  rc = request_resource(&mport->riores[RIO_OUTB_MBOX_RESOURCE],
          res);
  if (rc < 0) {
   kfree(res);
   goto out;
  }

  mport->outb_msg[mbox].res = res;


  mport->outb_msg[mbox].mcback = moutb;

  rc = mport->ops->open_outb_mbox(mport, dev_id, mbox, entries);
  if (rc) {
   mport->outb_msg[mbox].mcback = ((void*)0);
   mport->outb_msg[mbox].res = ((void*)0);
   release_resource(res);
   kfree(res);
  }
 } else
  rc = -ENOMEM;

      out:
 return rc;
}
