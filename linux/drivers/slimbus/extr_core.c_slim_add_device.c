
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int of_node; int * driver; int release; int parent; int * bus; } ;
struct TYPE_4__ {int instance; int dev_index; int prod_code; int manf_id; } ;
struct slim_device {TYPE_2__ dev; TYPE_1__ e_addr; int stream_list_lock; int stream_list; struct slim_controller* ctrl; } ;
struct slim_controller {int dev; } ;
struct device_node {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int dev_set_name (TYPE_2__*,char*,int ,int ,int ,int ) ;
 int device_register (TYPE_2__*) ;
 int of_node_get (struct device_node*) ;
 int slim_dev_release ;
 int slimbus_bus ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int slim_add_device(struct slim_controller *ctrl,
      struct slim_device *sbdev,
      struct device_node *node)
{
 sbdev->dev.bus = &slimbus_bus;
 sbdev->dev.parent = ctrl->dev;
 sbdev->dev.release = slim_dev_release;
 sbdev->dev.driver = ((void*)0);
 sbdev->ctrl = ctrl;
 INIT_LIST_HEAD(&sbdev->stream_list);
 spin_lock_init(&sbdev->stream_list_lock);

 if (node)
  sbdev->dev.of_node = of_node_get(node);

 dev_set_name(&sbdev->dev, "%x:%x:%x:%x",
      sbdev->e_addr.manf_id,
      sbdev->e_addr.prod_code,
      sbdev->e_addr.dev_index,
      sbdev->e_addr.instance);

 return device_register(&sbdev->dev);
}
