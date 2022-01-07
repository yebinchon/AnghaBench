
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int CYPRESS_WRITE_PORT_ID1 ;
 int write_port (struct device*,struct device_attribute*,char const*,size_t,int,int ) ;

__attribute__((used)) static ssize_t port1_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 return write_port(dev, attr, buf, count, 1, CYPRESS_WRITE_PORT_ID1);
}
