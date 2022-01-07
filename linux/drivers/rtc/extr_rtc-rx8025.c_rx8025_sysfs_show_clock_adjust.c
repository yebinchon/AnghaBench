
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int rx8025_get_clock_adjust (struct device*,int*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t rx8025_sysfs_show_clock_adjust(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 int err, adj;

 err = rx8025_get_clock_adjust(dev, &adj);
 if (err)
  return err;

 return sprintf(buf, "%d\n", adj);
}
