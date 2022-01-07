
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qcom_geni_serial_port {scalar_t__ loopback; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ MAX_LOOPBACK_CFG ;
 int dev_err (struct device*,char*) ;
 struct qcom_geni_serial_port* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtoint (char const*,int ,scalar_t__*) ;

__attribute__((used)) static ssize_t loopback_store(struct device *dev,
    struct device_attribute *attr, const char *buf,
    size_t size)
{
 struct qcom_geni_serial_port *port = dev_get_drvdata(dev);
 u32 loopback;

 if (kstrtoint(buf, 0, &loopback) || loopback > MAX_LOOPBACK_CFG) {
  dev_err(dev, "Invalid input\n");
  return -EINVAL;
 }
 port->loopback = loopback;
 return size;
}
