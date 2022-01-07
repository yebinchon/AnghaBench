
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int all_config_cdb_len () ;
 int kstrtoint (char const*,int ,int*) ;
 int sdebug_cdb_len ;

__attribute__((used)) static ssize_t cdb_len_store(struct device_driver *ddp, const char *buf,
        size_t count)
{
 int ret, n;

 ret = kstrtoint(buf, 0, &n);
 if (ret)
  return ret;
 sdebug_cdb_len = n;
 all_config_cdb_len();
 return count;
}
