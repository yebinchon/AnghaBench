
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ENOMEM ;
 int * fake_storep ;
 int pr_err (char*) ;
 scalar_t__ sdebug_dev_size_mb ;
 int sdebug_fake_rw ;
 int sscanf (char const*,char*,int*) ;
 int * vzalloc (unsigned long) ;

__attribute__((used)) static ssize_t fake_rw_store(struct device_driver *ddp, const char *buf,
        size_t count)
{
 int n;

 if ((count > 0) && (1 == sscanf(buf, "%d", &n)) && (n >= 0)) {
  n = (n > 0);
  sdebug_fake_rw = (sdebug_fake_rw > 0);
  if (sdebug_fake_rw != n) {
   if ((0 == n) && (((void*)0) == fake_storep)) {
    unsigned long sz =
     (unsigned long)sdebug_dev_size_mb *
     1048576;

    fake_storep = vzalloc(sz);
    if (((void*)0) == fake_storep) {
     pr_err("out of memory, 9\n");
     return -ENOMEM;
    }
   }
   sdebug_fake_rw = n;
  }
  return count;
 }
 return -EINVAL;
}
