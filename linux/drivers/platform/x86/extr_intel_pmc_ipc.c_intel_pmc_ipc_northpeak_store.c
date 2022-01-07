
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int PMC_IPC_NORTHPEAK_CTRL ;
 int dev_err (struct device*,char*,int,int) ;
 int intel_pmc_ipc_simple_command (int ,int) ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;

__attribute__((used)) static ssize_t intel_pmc_ipc_northpeak_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 unsigned long val;
 int subcmd;
 int ret;

 if (kstrtoul(buf, 0, &val))
  return -EINVAL;

 if (val)
  subcmd = 1;
 else
  subcmd = 0;
 ret = intel_pmc_ipc_simple_command(PMC_IPC_NORTHPEAK_CTRL, subcmd);
 if (ret) {
  dev_err(dev, "command north %d error with %d\n", subcmd, ret);
  return ret;
 }
 return (ssize_t)count;
}
