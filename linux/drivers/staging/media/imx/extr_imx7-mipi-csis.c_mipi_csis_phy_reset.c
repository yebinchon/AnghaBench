
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csi_state {int mrst; } ;


 int msleep (int) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static void mipi_csis_phy_reset(struct csi_state *state)
{
 reset_control_assert(state->mrst);

 msleep(20);

 reset_control_deassert(state->mrst);
}
