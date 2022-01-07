
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uuid_t ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int uuid; } ;
struct TYPE_4__ {TYPE_1__ id; } ;


 int add_uevent_var (struct kobj_uevent_env*,char*,int *) ;
 TYPE_2__* to_tee_client_device (struct device*) ;

__attribute__((used)) static int tee_client_device_uevent(struct device *dev,
        struct kobj_uevent_env *env)
{
 uuid_t *dev_id = &to_tee_client_device(dev)->id.uuid;

 return add_uevent_var(env, "MODALIAS=tee:%pUb", dev_id);
}
