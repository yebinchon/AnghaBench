
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct csi_state {int dummy; } ;


 int MIPI_CSIS_DPHYCTRL ;
 int MIPI_CSIS_DPHYCTRL_HSS_MASK ;
 int mipi_csis_read (struct csi_state*,int ) ;
 int mipi_csis_write (struct csi_state*,int ,int) ;

__attribute__((used)) static void mipi_csis_set_hsync_settle(struct csi_state *state, int hs_settle)
{
 u32 val = mipi_csis_read(state, MIPI_CSIS_DPHYCTRL);

 val = ((val & ~MIPI_CSIS_DPHYCTRL_HSS_MASK) | (hs_settle << 24));

 mipi_csis_write(state, MIPI_CSIS_DPHYCTRL, val);
}
