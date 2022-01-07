
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int buflen; int * buf; } ;
struct device {int of_node; } ;


 int ENODEV ;
 int ENOMEM ;
 scalar_t__ add_uevent_var (struct kobj_uevent_env*,char*) ;
 int of_device_get_modalias (struct device*,int *,int) ;

int of_device_uevent_modalias(struct device *dev, struct kobj_uevent_env *env)
{
 int sl;

 if ((!dev) || (!dev->of_node))
  return -ENODEV;


 if (add_uevent_var(env, "MODALIAS="))
  return -ENOMEM;

 sl = of_device_get_modalias(dev, &env->buf[env->buflen-1],
        sizeof(env->buf) - env->buflen);
 if (sl >= (sizeof(env->buf) - env->buflen))
  return -ENOMEM;
 env->buflen += sl;

 return 0;
}
