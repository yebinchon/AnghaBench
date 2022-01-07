
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cardstate {int cidmode; } ;
typedef int ssize_t ;


 struct cardstate* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_cidmode(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct cardstate *cs = dev_get_drvdata(dev);

 return sprintf(buf, "%u\n", cs->cidmode);
}
