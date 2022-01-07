
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * chpid; } ;
struct TYPE_6__ {TYPE_2__ pmcw; } ;
struct subchannel {TYPE_3__ schib; } ;
struct chp_id {int id; } ;
struct channel_path_desc_fmt0 {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct ccw_device {TYPE_1__ dev; } ;


 struct channel_path_desc_fmt0* chp_get_chp_desc (struct chp_id) ;
 int chp_id_init (struct chp_id*) ;
 struct subchannel* to_subchannel (int ) ;

struct channel_path_desc_fmt0 *ccw_device_get_chp_desc(struct ccw_device *cdev,
             int chp_idx)
{
 struct subchannel *sch;
 struct chp_id chpid;

 sch = to_subchannel(cdev->dev.parent);
 chp_id_init(&chpid);
 chpid.id = sch->schib.pmcw.chpid[chp_idx];
 return chp_get_chp_desc(chpid);
}
