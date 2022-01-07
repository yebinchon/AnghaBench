
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ips_driver {int gpu_turbo_enabled; int (* gpu_lower ) () ;} ;


 int ips_gpu_turbo_enabled (struct ips_driver*) ;
 int stub1 () ;

__attribute__((used)) static void ips_gpu_lower(struct ips_driver *ips)
{
 if (!ips_gpu_turbo_enabled(ips))
  return;

 if (!ips->gpu_lower())
  ips->gpu_turbo_enabled = 0;

 return;
}
