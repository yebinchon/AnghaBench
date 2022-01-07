
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ips_driver {int gpu_turbo_enabled; int dev; int gpu_busy; } ;


 int HTS_GTD_DIS ;
 int THM_HTS ;
 int dev_info (int ,char*) ;
 scalar_t__ ips_get_i915_syms (struct ips_driver*) ;
 scalar_t__ late_i915_load ;
 int thm_readl (int ) ;

__attribute__((used)) static bool
ips_gpu_turbo_enabled(struct ips_driver *ips)
{
 if (!ips->gpu_busy && late_i915_load) {
  if (ips_get_i915_syms(ips)) {
   dev_info(ips->dev,
     "i915 driver attached, reenabling gpu turbo\n");
   ips->gpu_turbo_enabled = !(thm_readl(THM_HTS) & HTS_GTD_DIS);
  }
 }

 return ips->gpu_turbo_enabled;
}
