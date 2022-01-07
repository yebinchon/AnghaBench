
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int kobj; int * type; int groups; int * bus; int * parent; } ;
struct TYPE_4__ {int sch_no; int ssid; } ;
struct subchannel {scalar_t__ st; TYPE_2__ dev; int driver; TYPE_1__ schid; } ;
struct TYPE_6__ {int device; } ;


 int CIO_MSG_EVENT (int ,char*,int ,int ,int) ;
 int KOBJ_ADD ;
 scalar_t__ SUBCHANNEL_TYPE_IO ;
 TYPE_3__** channel_subsystems ;
 int css_bus_type ;
 int css_sch_device_register (struct subchannel*) ;
 int css_update_ssd_info (struct subchannel*) ;
 int default_subch_attr_groups ;
 int dev_set_uevent_suppress (TYPE_2__*,int) ;
 int io_subchannel_type ;
 int kobject_uevent (int *,int ) ;

int css_register_subchannel(struct subchannel *sch)
{
 int ret;


 sch->dev.parent = &channel_subsystems[0]->device;
 sch->dev.bus = &css_bus_type;
 sch->dev.groups = default_subch_attr_groups;

 if (sch->st == SUBCHANNEL_TYPE_IO)
  sch->dev.type = &io_subchannel_type;
 dev_set_uevent_suppress(&sch->dev, 1);
 css_update_ssd_info(sch);

 ret = css_sch_device_register(sch);
 if (ret) {
  CIO_MSG_EVENT(0, "Could not register sch 0.%x.%04x: %d\n",
         sch->schid.ssid, sch->schid.sch_no, ret);
  return ret;
 }
 if (!sch->driver) {





  dev_set_uevent_suppress(&sch->dev, 0);
  kobject_uevent(&sch->dev.kobj, KOBJ_ADD);
 }
 return ret;
}
