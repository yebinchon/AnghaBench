
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DCON_REG_SCAN_INT ;
 int dcon_write (int ,int ,unsigned short) ;
 int dev_get_drvdata (struct device*) ;
 int kstrtou16 (char const*,int,unsigned short*) ;
 unsigned short resumeline ;

__attribute__((used)) static ssize_t dcon_resumeline_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 unsigned short rl;
 int rc;

 rc = kstrtou16(buf, 10, &rl);
 if (rc)
  return rc;

 resumeline = rl;
 dcon_write(dev_get_drvdata(dev), DCON_REG_SCAN_INT, resumeline);

 return count;
}
