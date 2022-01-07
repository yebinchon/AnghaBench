
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_smd_edge {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct qcom_smd_edge* to_smd_edge (struct device*) ;

__attribute__((used)) static ssize_t rpmsg_name_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct qcom_smd_edge *edge = to_smd_edge(dev);

 return sprintf(buf, "%s\n", edge->name);
}
