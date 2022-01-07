
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucsi_ccg {scalar_t__ fw_build; scalar_t__ fw_version; int pm_work; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ CCG_FW_BUILD_NVIDIA ;
 scalar_t__ CCG_OLD_FW_VERSION ;
 struct ucsi_ccg* i2c_get_clientdata (struct i2c_client*) ;
 int schedule_work (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int ucsi_ccg_runtime_resume(struct device *dev)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct ucsi_ccg *uc = i2c_get_clientdata(client);






 if (uc->fw_build == CCG_FW_BUILD_NVIDIA &&
     uc->fw_version <= CCG_OLD_FW_VERSION)
  schedule_work(&uc->pm_work);

 return 0;
}
