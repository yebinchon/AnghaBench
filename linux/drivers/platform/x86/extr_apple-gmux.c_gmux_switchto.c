
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum vga_switcheroo_client_id { ____Placeholder_vga_switcheroo_client_id } vga_switcheroo_client_id ;
struct TYPE_3__ {int switch_state_ddc; int switch_state_display; int switch_state_external; scalar_t__ external_switchable; } ;


 TYPE_1__* apple_gmux_data ;
 int gmux_write_switch_state (TYPE_1__*) ;

__attribute__((used)) static int gmux_switchto(enum vga_switcheroo_client_id id)
{
 apple_gmux_data->switch_state_ddc = id;
 apple_gmux_data->switch_state_display = id;
 if (apple_gmux_data->external_switchable)
  apple_gmux_data->switch_state_external = id;

 gmux_write_switch_state(apple_gmux_data);

 return 0;
}
