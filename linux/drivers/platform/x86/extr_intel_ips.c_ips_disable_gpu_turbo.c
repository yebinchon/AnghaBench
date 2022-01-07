
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ips_driver {int __gpu_turbo_on; int dev; int (* gpu_turbo_disable ) () ;} ;


 int dev_err (int ,char*) ;
 int stub1 () ;

__attribute__((used)) static void ips_disable_gpu_turbo(struct ips_driver *ips)
{

 if (!ips->__gpu_turbo_on)
  return;

 if (!ips->gpu_turbo_disable())
  dev_err(ips->dev, "failed to disable graphics turbo\n");
 else
  ips->__gpu_turbo_on = 0;
}
