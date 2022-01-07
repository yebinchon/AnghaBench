
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct apple_gmux_data {int dummy; } ;


 int GMUX_PORT_INTERRUPT_STATUS ;
 int gmux_interrupt_get_status (struct apple_gmux_data*) ;
 int gmux_write8 (struct apple_gmux_data*,int ,int ) ;

__attribute__((used)) static void gmux_clear_interrupts(struct apple_gmux_data *gmux_data)
{
 u8 status;


 status = gmux_interrupt_get_status(gmux_data);
 gmux_write8(gmux_data, GMUX_PORT_INTERRUPT_STATUS, status);
}
