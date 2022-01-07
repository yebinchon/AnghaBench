
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int NO_DEBUG ;
 int debugging ;

__attribute__((used)) static ssize_t debug_flag_store(struct device_driver *ddp,
 const char *buf, size_t count)
{




 if (count > 0) {
  if (buf[0] == '0') {
   debugging = NO_DEBUG;
   return count;
  } else if (buf[0] == '1') {
   debugging = 1;
   return count;
  }
 }
 return -EINVAL;
}
