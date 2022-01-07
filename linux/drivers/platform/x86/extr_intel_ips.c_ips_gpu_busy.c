
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ips_driver {int (* gpu_busy ) () ;} ;


 int ips_gpu_turbo_enabled (struct ips_driver*) ;
 int stub1 () ;

__attribute__((used)) static bool ips_gpu_busy(struct ips_driver *ips)
{
 if (!ips_gpu_turbo_enabled(ips))
  return 0;

 return ips->gpu_busy();
}
