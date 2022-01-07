
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qeth_card {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 int EINVAL ;
 int EOPNOTSUPP ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int qeth_l2_vnicc_get_state (struct qeth_card*,int ,int*) ;
 int qeth_l2_vnicc_sysfs_attr_to_char (int ) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t qeth_vnicc_char_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 bool state;
 u32 vnicc;
 int rc;

 if (!card)
  return -EINVAL;

 vnicc = qeth_l2_vnicc_sysfs_attr_to_char(attr->attr.name);
 rc = qeth_l2_vnicc_get_state(card, vnicc, &state);

 if (rc == -EBUSY)
  return sprintf(buf, "n/a (BridgePort)\n");
 if (rc == -EOPNOTSUPP)
  return sprintf(buf, "n/a\n");
 return rc ? rc : sprintf(buf, "%d\n", state);
}
