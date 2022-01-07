
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int driver_data; int ident; } ;


 int keymap ;
 int pr_info (char*,int ) ;

__attribute__((used)) static int fujitsu_laptop_dmi_keymap_override(const struct dmi_system_id *id)
{
 pr_info("Identified laptop model '%s'\n", id->ident);
 keymap = id->driver_data;
 return 1;
}
