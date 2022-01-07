
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 long RIO_MAX_MPORTS ;
 long RIO_MPORT_ANY ;
 scalar_t__ kstrtol (char const*,int ,long*) ;
 int rio_init_mports () ;
 int rio_mport_scan (int) ;

__attribute__((used)) static ssize_t scan_store(struct bus_type *bus, const char *buf, size_t count)
{
 long val;
 int rc;

 if (kstrtol(buf, 0, &val) < 0)
  return -EINVAL;

 if (val == RIO_MPORT_ANY) {
  rc = rio_init_mports();
  goto exit;
 }

 if (val < 0 || val >= RIO_MAX_MPORTS)
  return -EINVAL;

 rc = rio_mport_scan((int)val);
exit:
 if (!rc)
  rc = count;

 return rc;
}
