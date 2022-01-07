
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_dev {int dev_addr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int addr ;


 int UWB_ADDR_STRSIZE ;
 int sprintf (char*,char*,char*) ;
 struct uwb_dev* to_uwb_dev (struct device*) ;
 int uwb_dev_addr_print (char*,int,int *) ;

__attribute__((used)) static ssize_t uwb_dev_DevAddr_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct uwb_dev *uwb_dev = to_uwb_dev(dev);
 char addr[UWB_ADDR_STRSIZE];

 uwb_dev_addr_print(addr, sizeof(addr), &uwb_dev->dev_addr);
 return sprintf(buf, "%s\n", addr);
}
