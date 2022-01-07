
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_internal {int iscsi_transport; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct iscsi_internal* dev_to_iscsi_internal (struct device*) ;
 scalar_t__ iscsi_handle (int ) ;
 int sprintf (char*,char*,unsigned long long) ;

__attribute__((used)) static ssize_t
show_transport_handle(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct iscsi_internal *priv = dev_to_iscsi_internal(dev);
 return sprintf(buf, "%llu\n", (unsigned long long)iscsi_handle(priv->iscsi_transport));
}
