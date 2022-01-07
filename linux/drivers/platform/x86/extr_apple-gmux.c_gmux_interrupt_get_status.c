
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct apple_gmux_data {int dummy; } ;


 int GMUX_PORT_INTERRUPT_STATUS ;
 int gmux_read8 (struct apple_gmux_data*,int ) ;

__attribute__((used)) static inline u8 gmux_interrupt_get_status(struct apple_gmux_data *gmux_data)
{
 return gmux_read8(gmux_data, GMUX_PORT_INTERRUPT_STATUS);
}
