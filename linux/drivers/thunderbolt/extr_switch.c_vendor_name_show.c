
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_switch {char* vendor_name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct tb_switch* tb_to_switch (struct device*) ;

__attribute__((used)) static ssize_t
vendor_name_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct tb_switch *sw = tb_to_switch(dev);

 return sprintf(buf, "%s\n", sw->vendor_name ? sw->vendor_name : "");
}
