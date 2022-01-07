
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucsi_ccg {int fw_build; int work; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int dev_err (struct device*,char*) ;
 struct ucsi_ccg* i2c_get_clientdata (int ) ;
 scalar_t__ kstrtobool (char const*,int*) ;
 int schedule_work (int *) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t do_flash_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t n)
{
 struct ucsi_ccg *uc = i2c_get_clientdata(to_i2c_client(dev));
 bool flash;

 if (kstrtobool(buf, &flash))
  return -EINVAL;

 if (!flash)
  return n;

 if (uc->fw_build == 0x0) {
  dev_err(dev, "fail to flash FW due to missing FW build info\n");
  return -EINVAL;
 }

 schedule_work(&uc->work);
 return n;
}
