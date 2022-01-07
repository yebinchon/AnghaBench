
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct qeth_card* dev_get_drvdata (struct device*) ;
 int qeth_bridge_port_role_state_show (struct device*,struct device_attribute*,char*,int) ;
 scalar_t__ qeth_l2_vnicc_is_in_use (struct qeth_card*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t qeth_bridge_port_state_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct qeth_card *card = dev_get_drvdata(dev);

 if (qeth_l2_vnicc_is_in_use(card))
  return sprintf(buf, "n/a (VNIC characteristics)\n");

 return qeth_bridge_port_role_state_show(dev, attr, buf, 1);
}
