
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apple_gmux_data {int dummy; } ;


 int GMUX_INTERRUPT_ENABLE ;
 int GMUX_PORT_INTERRUPT_ENABLE ;
 int gmux_write8 (struct apple_gmux_data*,int ,int ) ;

__attribute__((used)) static inline void gmux_enable_interrupts(struct apple_gmux_data *gmux_data)
{
 gmux_write8(gmux_data, GMUX_PORT_INTERRUPT_ENABLE,
      GMUX_INTERRUPT_ENABLE);
}
