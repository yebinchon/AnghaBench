
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef size_t ssize_t ;


 int PATH_MAX ;
 int strncpy (int ,char const*,int ) ;
 int v86d_path ;

__attribute__((used)) static ssize_t v86d_store(struct device_driver *dev, const char *buf,
  size_t count)
{
 strncpy(v86d_path, buf, PATH_MAX);
 return count;
}
