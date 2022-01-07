
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qcom_geni_serial_port {int loopback; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct qcom_geni_serial_port* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static ssize_t loopback_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct qcom_geni_serial_port *port = dev_get_drvdata(dev);

 return snprintf(buf, sizeof(u32), "%d\n", port->loopback);
}
