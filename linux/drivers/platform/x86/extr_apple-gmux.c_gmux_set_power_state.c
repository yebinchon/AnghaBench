
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vga_switcheroo_state { ____Placeholder_vga_switcheroo_state } vga_switcheroo_state ;
typedef enum vga_switcheroo_client_id { ____Placeholder_vga_switcheroo_client_id } vga_switcheroo_client_id ;


 int VGA_SWITCHEROO_IGD ;
 int apple_gmux_data ;
 int gmux_set_discrete_state (int ,int) ;

__attribute__((used)) static int gmux_set_power_state(enum vga_switcheroo_client_id id,
    enum vga_switcheroo_state state)
{
 if (id == VGA_SWITCHEROO_IGD)
  return 0;

 return gmux_set_discrete_state(apple_gmux_data, state);
}
