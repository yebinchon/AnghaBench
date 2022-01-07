
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_ctx {int link_state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ QEDI_LINK_UP ;
 scalar_t__ atomic_read (int *) ;
 struct qedi_ctx* qedi_dev_to_hba (struct device*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t qedi_show_port_state(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct qedi_ctx *qedi = qedi_dev_to_hba(dev);

 if (atomic_read(&qedi->link_state) == QEDI_LINK_UP)
  return sprintf(buf, "Online\n");
 else
  return sprintf(buf, "Linkdown\n");
}
