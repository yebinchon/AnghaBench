
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int kobj; } ;
struct TYPE_5__ {int sch_no; int ssid; } ;
struct subchannel {TYPE_2__ dev; TYPE_1__ schid; int isc; } ;
struct chsc_private {int dummy; } ;


 int CHSC_MSG (int,char*,int ,int ,...) ;
 int CHSC_SCH_ISC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KOBJ_ADD ;
 int cio_enable_subchannel (struct subchannel*,int ) ;
 scalar_t__ dev_get_uevent_suppress (TYPE_2__*) ;
 int dev_set_drvdata (TYPE_2__*,struct chsc_private*) ;
 int dev_set_uevent_suppress (TYPE_2__*,int ) ;
 int kfree (struct chsc_private*) ;
 int kobject_uevent (int *,int ) ;
 struct chsc_private* kzalloc (int,int ) ;

__attribute__((used)) static int chsc_subchannel_probe(struct subchannel *sch)
{
 struct chsc_private *private;
 int ret;

 CHSC_MSG(6, "Detected chsc subchannel 0.%x.%04x\n",
   sch->schid.ssid, sch->schid.sch_no);
 sch->isc = CHSC_SCH_ISC;
 private = kzalloc(sizeof(*private), GFP_KERNEL);
 if (!private)
  return -ENOMEM;
 dev_set_drvdata(&sch->dev, private);
 ret = cio_enable_subchannel(sch, (u32)(unsigned long)sch);
 if (ret) {
  CHSC_MSG(0, "Failed to enable 0.%x.%04x: %d\n",
    sch->schid.ssid, sch->schid.sch_no, ret);
  dev_set_drvdata(&sch->dev, ((void*)0));
  kfree(private);
 } else {
  if (dev_get_uevent_suppress(&sch->dev)) {
   dev_set_uevent_suppress(&sch->dev, 0);
   kobject_uevent(&sch->dev.kobj, KOBJ_ADD);
  }
 }
 return ret;
}
