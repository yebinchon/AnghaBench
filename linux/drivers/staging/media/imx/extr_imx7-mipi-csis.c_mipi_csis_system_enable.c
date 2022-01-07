
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int num_data_lanes; } ;
struct csi_state {TYPE_1__ bus; } ;


 int MIPI_CSIS_CMN_CTRL ;
 int MIPI_CSIS_CMN_CTRL_ENABLE ;
 int MIPI_CSIS_DPHYCTRL ;
 int MIPI_CSIS_DPHYCTRL_ENABLE ;
 int mipi_csis_read (struct csi_state*,int ) ;
 int mipi_csis_write (struct csi_state*,int ,int) ;

__attribute__((used)) static void mipi_csis_system_enable(struct csi_state *state, int on)
{
 u32 val, mask;

 val = mipi_csis_read(state, MIPI_CSIS_CMN_CTRL);
 if (on)
  val |= MIPI_CSIS_CMN_CTRL_ENABLE;
 else
  val &= ~MIPI_CSIS_CMN_CTRL_ENABLE;
 mipi_csis_write(state, MIPI_CSIS_CMN_CTRL, val);

 val = mipi_csis_read(state, MIPI_CSIS_DPHYCTRL);
 val &= ~MIPI_CSIS_DPHYCTRL_ENABLE;
 if (on) {
  mask = (1 << (state->bus.num_data_lanes + 1)) - 1;
  val |= (mask & MIPI_CSIS_DPHYCTRL_ENABLE);
 }
 mipi_csis_write(state, MIPI_CSIS_DPHYCTRL, val);
}
