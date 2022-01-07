
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int ident; } ;


 int pr_info (char*,int ) ;

__attribute__((used)) static int ips_blacklist_callback(const struct dmi_system_id *id)
{
 pr_info("Blacklisted intel_ips for %s\n", id->ident);
 return 1;
}
