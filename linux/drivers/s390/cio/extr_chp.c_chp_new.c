
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct chp_id {size_t id; int cssid; } ;
struct channel_subsystem {int mutex; struct channel_path** chps; scalar_t__ cm_enabled; int device; } ;
struct TYPE_7__ {int release; int groups; int * parent; } ;
struct TYPE_6__ {int flags; } ;
struct channel_path {int state; TYPE_2__ dev; TYPE_1__ desc; int lock; struct chp_id chpid; } ;


 int CIO_MSG_EVENT (int ,char*,int ,size_t,int) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int chp_add_cmg_attr (struct channel_path*) ;
 int chp_attr_groups ;
 scalar_t__ chp_is_registered (struct chp_id) ;
 int chp_release ;
 int chp_update_desc (struct channel_path*) ;
 struct channel_subsystem* css_by_id (int ) ;
 int dev_set_name (TYPE_2__*,char*,int ,size_t) ;
 int device_register (TYPE_2__*) ;
 int device_unregister (TYPE_2__*) ;
 int kfree (struct channel_path*) ;
 struct channel_path* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (TYPE_2__*) ;

int chp_new(struct chp_id chpid)
{
 struct channel_subsystem *css = css_by_id(chpid.cssid);
 struct channel_path *chp;
 int ret = 0;

 mutex_lock(&css->mutex);
 if (chp_is_registered(chpid))
  goto out;

 chp = kzalloc(sizeof(struct channel_path), GFP_KERNEL);
 if (!chp) {
  ret = -ENOMEM;
  goto out;
 }

 chp->chpid = chpid;
 chp->state = 1;
 chp->dev.parent = &css->device;
 chp->dev.groups = chp_attr_groups;
 chp->dev.release = chp_release;
 mutex_init(&chp->lock);


 ret = chp_update_desc(chp);
 if (ret)
  goto out_free;
 if ((chp->desc.flags & 0x80) == 0) {
  ret = -ENODEV;
  goto out_free;
 }
 dev_set_name(&chp->dev, "chp%x.%02x", chpid.cssid, chpid.id);


 ret = device_register(&chp->dev);
 if (ret) {
  CIO_MSG_EVENT(0, "Could not register chp%x.%02x: %d\n",
         chpid.cssid, chpid.id, ret);
  put_device(&chp->dev);
  goto out;
 }

 if (css->cm_enabled) {
  ret = chp_add_cmg_attr(chp);
  if (ret) {
   device_unregister(&chp->dev);
   goto out;
  }
 }
 css->chps[chpid.id] = chp;
 goto out;
out_free:
 kfree(chp);
out:
 mutex_unlock(&css->mutex);
 return ret;
}
