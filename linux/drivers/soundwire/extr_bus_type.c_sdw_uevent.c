
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_slave {int dummy; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;
typedef int modalias ;


 int ENOMEM ;
 scalar_t__ add_uevent_var (struct kobj_uevent_env*,char*,char*) ;
 struct sdw_slave* dev_to_sdw_dev (struct device*) ;
 int sdw_slave_modalias (struct sdw_slave*,char*,int) ;

__attribute__((used)) static int sdw_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct sdw_slave *slave = dev_to_sdw_dev(dev);
 char modalias[32];

 sdw_slave_modalias(slave, modalias, sizeof(modalias));

 if (add_uevent_var(env, "MODALIAS=%s", modalias))
  return -ENOMEM;

 return 0;
}
