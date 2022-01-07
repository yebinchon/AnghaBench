
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int nodename; } ;


 int xenbus_read_unsigned (int ,char*,int ) ;

int xenbus_dev_is_online(struct xenbus_device *dev)
{
 return !!xenbus_read_unsigned(dev->nodename, "online", 0);
}
