
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;
struct ccw_device_id {char* cu_type; char* cu_model; char* dev_type; char* dev_model; } ;
struct ccw_device {struct ccw_device_id id; } ;
typedef int modalias_buf ;


 int add_uevent_var (struct kobj_uevent_env*,char*,char*) ;
 int snprint_alias (char*,int,struct ccw_device_id*,char*) ;
 struct ccw_device* to_ccwdev (struct device*) ;

__attribute__((used)) static int ccw_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct ccw_device *cdev = to_ccwdev(dev);
 struct ccw_device_id *id = &(cdev->id);
 int ret;
 char modalias_buf[30];


 ret = add_uevent_var(env, "CU_TYPE=%04X", id->cu_type);
 if (ret)
  return ret;


 ret = add_uevent_var(env, "CU_MODEL=%02X", id->cu_model);
 if (ret)
  return ret;



 ret = add_uevent_var(env, "DEV_TYPE=%04X", id->dev_type);
 if (ret)
  return ret;


 ret = add_uevent_var(env, "DEV_MODEL=%02X", id->dev_model);
 if (ret)
  return ret;


 snprint_alias(modalias_buf, sizeof(modalias_buf), id, "");
 ret = add_uevent_var(env, "MODALIAS=%s", modalias_buf);
 return ret;
}
