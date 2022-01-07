
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct ips_mcp_limits {int core_power_limit; } ;
struct ips_driver {int turbo_toggle_allowed; int dev; } ;
struct TYPE_2__ {int x86; int x86_model; int x86_model_id; } ;


 int IA32_MISC_ENABLE ;
 int IA32_MISC_TURBO_EN ;
 int TURBO_POWER_CURRENT_LIMIT ;
 int TURBO_TDP_MASK ;
 TYPE_1__ boot_cpu_data ;
 int dev_info (int ,char*,...) ;
 struct ips_mcp_limits ips_lv_limits ;
 struct ips_mcp_limits ips_sv_limits ;
 struct ips_mcp_limits ips_ulv_limits ;
 int rdmsrl (int ,int) ;
 scalar_t__ strstr (int ,char*) ;

__attribute__((used)) static struct ips_mcp_limits *ips_detect_cpu(struct ips_driver *ips)
{
 u64 turbo_power, misc_en;
 struct ips_mcp_limits *limits = ((void*)0);
 u16 tdp;

 if (!(boot_cpu_data.x86 == 6 && boot_cpu_data.x86_model == 37)) {
  dev_info(ips->dev, "Non-IPS CPU detected.\n");
  return ((void*)0);
 }

 rdmsrl(IA32_MISC_ENABLE, misc_en);





 if (misc_en & IA32_MISC_TURBO_EN)
  ips->turbo_toggle_allowed = 1;
 else
  ips->turbo_toggle_allowed = 0;

 if (strstr(boot_cpu_data.x86_model_id, "CPU       M"))
  limits = &ips_sv_limits;
 else if (strstr(boot_cpu_data.x86_model_id, "CPU       L"))
  limits = &ips_lv_limits;
 else if (strstr(boot_cpu_data.x86_model_id, "CPU       U"))
  limits = &ips_ulv_limits;
 else {
  dev_info(ips->dev, "No CPUID match found.\n");
  return ((void*)0);
 }

 rdmsrl(TURBO_POWER_CURRENT_LIMIT, turbo_power);
 tdp = turbo_power & TURBO_TDP_MASK;


 if (limits->core_power_limit != (tdp / 8) * 1000) {
  dev_info(ips->dev,
    "CPU TDP doesn't match expected value (found %d, expected %d)\n",
    tdp / 8, limits->core_power_limit / 1000);
  limits->core_power_limit = (tdp / 8) * 1000;
 }

 return limits;
}
