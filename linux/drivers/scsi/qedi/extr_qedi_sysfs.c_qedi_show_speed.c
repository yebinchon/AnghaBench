
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qedi_ctx {int cdev; } ;
struct qed_link_output {int speed; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int (* get_link ) (int ,struct qed_link_output*) ;} ;


 struct qedi_ctx* qedi_dev_to_hba (struct device*) ;
 TYPE_2__* qedi_ops ;
 int sprintf (char*,char*,int) ;
 int stub1 (int ,struct qed_link_output*) ;

__attribute__((used)) static ssize_t qedi_show_speed(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct qedi_ctx *qedi = qedi_dev_to_hba(dev);
 struct qed_link_output if_link;

 qedi_ops->common->get_link(qedi->cdev, &if_link);

 return sprintf(buf, "%d Gbit\n", if_link.speed / 1000);
}
