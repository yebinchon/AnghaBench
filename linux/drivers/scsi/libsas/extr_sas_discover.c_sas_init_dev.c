
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cmd_mutex; int children; } ;
struct TYPE_3__ {int eh_list_node; } ;
struct domain_device {int dev_type; TYPE_2__ ex_dev; TYPE_1__ ssp_dev; } ;


 int INIT_LIST_HEAD (int *) ;



 int mutex_init (int *) ;

void sas_init_dev(struct domain_device *dev)
{
 switch (dev->dev_type) {
 case 129:
  INIT_LIST_HEAD(&dev->ssp_dev.eh_list_node);
  break;
 case 130:
 case 128:
  INIT_LIST_HEAD(&dev->ex_dev.children);
  mutex_init(&dev->ex_dev.cmd_mutex);
  break;
 default:
  break;
 }
}
