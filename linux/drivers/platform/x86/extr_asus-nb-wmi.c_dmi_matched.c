
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int driver_data; int ident; } ;


 int pr_info (char*,int ) ;
 int quirks ;

__attribute__((used)) static int dmi_matched(const struct dmi_system_id *dmi)
{
 pr_info("Identified laptop model '%s'\n", dmi->ident);
 quirks = dmi->driver_data;
 return 1;
}
