
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum vga_switcheroo_client_id { ____Placeholder_vga_switcheroo_client_id } vga_switcheroo_client_id ;
struct TYPE_3__ {int switch_state_ddc; } ;


 int GMUX_PORT_SWITCH_DDC ;
 int VGA_SWITCHEROO_IGD ;
 TYPE_1__* apple_gmux_data ;
 int gmux_write8 (TYPE_1__*,int ,int) ;
 int pr_debug (char*,int,int) ;

__attribute__((used)) static int gmux_switch_ddc(enum vga_switcheroo_client_id id)
{
 enum vga_switcheroo_client_id old_ddc_owner =
  apple_gmux_data->switch_state_ddc;

 if (id == old_ddc_owner)
  return id;

 pr_debug("Switching DDC from %d to %d\n", old_ddc_owner, id);
 apple_gmux_data->switch_state_ddc = id;

 if (id == VGA_SWITCHEROO_IGD)
  gmux_write8(apple_gmux_data, GMUX_PORT_SWITCH_DDC, 1);
 else
  gmux_write8(apple_gmux_data, GMUX_PORT_SWITCH_DDC, 2);

 return old_ddc_owner;
}
