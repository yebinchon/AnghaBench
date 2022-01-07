
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int * chpid; } ;
struct TYPE_6__ {TYPE_1__ pmcw; } ;
struct subchannel {TYPE_2__ schib; } ;
struct chp_id {int id; } ;
struct TYPE_7__ {int util_str; } ;
struct channel_path {int lock; TYPE_3__ desc_fmt3; } ;
struct TYPE_8__ {int parent; } ;
struct ccw_device {TYPE_4__ dev; } ;


 int GFP_KERNEL ;
 int chp_id_init (struct chp_id*) ;
 struct channel_path* chpid_to_chp (struct chp_id) ;
 int * kmalloc (int,int ) ;
 int memcpy (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct subchannel* to_subchannel (int ) ;

u8 *ccw_device_get_util_str(struct ccw_device *cdev, int chp_idx)
{
 struct subchannel *sch = to_subchannel(cdev->dev.parent);
 struct channel_path *chp;
 struct chp_id chpid;
 u8 *util_str;

 chp_id_init(&chpid);
 chpid.id = sch->schib.pmcw.chpid[chp_idx];
 chp = chpid_to_chp(chpid);

 util_str = kmalloc(sizeof(chp->desc_fmt3.util_str), GFP_KERNEL);
 if (!util_str)
  return ((void*)0);

 mutex_lock(&chp->lock);
 memcpy(util_str, chp->desc_fmt3.util_str, sizeof(chp->desc_fmt3.util_str));
 mutex_unlock(&chp->lock);

 return util_str;
}
