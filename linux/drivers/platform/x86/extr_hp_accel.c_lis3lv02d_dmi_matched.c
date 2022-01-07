
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union axis_conversion {int dummy; } axis_conversion ;
struct dmi_system_id {int ident; scalar_t__ driver_data; } ;
struct TYPE_2__ {union axis_conversion ac; } ;


 TYPE_1__ lis3_dev ;
 int pr_info (char*,int ) ;

__attribute__((used)) static int lis3lv02d_dmi_matched(const struct dmi_system_id *dmi)
{
 lis3_dev.ac = *((union axis_conversion *)dmi->driver_data);
 pr_info("hardware type %s found\n", dmi->ident);

 return 1;
}
