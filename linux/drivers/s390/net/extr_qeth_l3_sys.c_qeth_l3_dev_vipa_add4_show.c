
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int QETH_IP_TYPE_VIPA ;
 int QETH_PROT_IPV4 ;
 int qeth_l3_dev_ip_add_show (struct device*,char*,int ,int ) ;

__attribute__((used)) static ssize_t qeth_l3_dev_vipa_add4_show(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 return qeth_l3_dev_ip_add_show(dev, buf, QETH_PROT_IPV4,
           QETH_IP_TYPE_VIPA);
}
