
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apple_gmux_data {void* switch_state_external; void* switch_state_display; void* switch_state_ddc; } ;


 int GMUX_PORT_SWITCH_DDC ;
 int GMUX_PORT_SWITCH_DISPLAY ;
 int GMUX_PORT_SWITCH_EXTERNAL ;
 void* VGA_SWITCHEROO_DIS ;
 void* VGA_SWITCHEROO_IGD ;
 int gmux_read8 (struct apple_gmux_data*,int ) ;

__attribute__((used)) static void gmux_read_switch_state(struct apple_gmux_data *gmux_data)
{
 if (gmux_read8(gmux_data, GMUX_PORT_SWITCH_DDC) == 1)
  gmux_data->switch_state_ddc = VGA_SWITCHEROO_IGD;
 else
  gmux_data->switch_state_ddc = VGA_SWITCHEROO_DIS;

 if (gmux_read8(gmux_data, GMUX_PORT_SWITCH_DISPLAY) == 2)
  gmux_data->switch_state_display = VGA_SWITCHEROO_IGD;
 else
  gmux_data->switch_state_display = VGA_SWITCHEROO_DIS;

 if (gmux_read8(gmux_data, GMUX_PORT_SWITCH_EXTERNAL) == 2)
  gmux_data->switch_state_external = VGA_SWITCHEROO_IGD;
 else
  gmux_data->switch_state_external = VGA_SWITCHEROO_DIS;
}
