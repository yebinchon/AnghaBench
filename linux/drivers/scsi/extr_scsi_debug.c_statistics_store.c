
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int clear_queue_stats () ;
 int sdebug_statistics ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static ssize_t statistics_store(struct device_driver *ddp, const char *buf,
    size_t count)
{
 int n;

 if ((count > 0) && (sscanf(buf, "%d", &n) == 1) && (n >= 0)) {
  if (n > 0)
   sdebug_statistics = 1;
  else {
   clear_queue_stats();
   sdebug_statistics = 0;
  }
  return count;
 }
 return -EINVAL;
}
