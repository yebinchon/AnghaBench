
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct switchdev_notifier_fdb_info {int addr; } ;
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {void* addr; } ;
struct ethsw_switchdev_event_work {unsigned long event; int work; TYPE_1__ fdb_info; struct net_device* dev; } ;


 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int NOTIFY_BAD ;
 int NOTIFY_DONE ;


 unsigned long SWITCHDEV_PORT_ATTR_SET ;
 int dev_hold (struct net_device*) ;
 int ether_addr_copy (int *,int ) ;
 int ethsw_owq ;
 int ethsw_port_dev_check (struct net_device*) ;
 int ethsw_switchdev_event_work ;
 int ethsw_switchdev_port_attr_set_event (struct net_device*,void*) ;
 int kfree (struct ethsw_switchdev_event_work*) ;
 void* kzalloc (int,int ) ;
 int memcpy (TYPE_1__*,void*,int) ;
 int queue_work (int ,int *) ;
 struct net_device* switchdev_notifier_info_to_dev (void*) ;

__attribute__((used)) static int port_switchdev_event(struct notifier_block *unused,
    unsigned long event, void *ptr)
{
 struct net_device *dev = switchdev_notifier_info_to_dev(ptr);
 struct ethsw_switchdev_event_work *switchdev_work;
 struct switchdev_notifier_fdb_info *fdb_info = ptr;

 if (!ethsw_port_dev_check(dev))
  return NOTIFY_DONE;

 if (event == SWITCHDEV_PORT_ATTR_SET)
  return ethsw_switchdev_port_attr_set_event(dev, ptr);

 switchdev_work = kzalloc(sizeof(*switchdev_work), GFP_ATOMIC);
 if (!switchdev_work)
  return NOTIFY_BAD;

 INIT_WORK(&switchdev_work->work, ethsw_switchdev_event_work);
 switchdev_work->dev = dev;
 switchdev_work->event = event;

 switch (event) {
 case 129:
 case 128:
  memcpy(&switchdev_work->fdb_info, ptr,
         sizeof(switchdev_work->fdb_info));
  switchdev_work->fdb_info.addr = kzalloc(ETH_ALEN, GFP_ATOMIC);
  if (!switchdev_work->fdb_info.addr)
   goto err_addr_alloc;

  ether_addr_copy((u8 *)switchdev_work->fdb_info.addr,
    fdb_info->addr);


  dev_hold(dev);
  break;
 default:
  kfree(switchdev_work);
  return NOTIFY_DONE;
 }

 queue_work(ethsw_owq, &switchdev_work->work);

 return NOTIFY_DONE;

err_addr_alloc:
 kfree(switchdev_work);
 return NOTIFY_BAD;
}
