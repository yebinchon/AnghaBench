
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dss_pll {int id; } ;
struct TYPE_2__ {int dispc_channel; } ;
struct dpi_data {struct dss_pll* pll; TYPE_1__ output; } ;


 int DSSWARN (char*) ;
 scalar_t__ OMAPDSS_VER_DRA7xx ;
 struct dss_pll* dpi_get_pll (int ) ;
 scalar_t__ dpi_verify_dsi_pll (struct dss_pll*) ;
 int dss_ctrl_pll_set_control_mux (int ,int ) ;
 scalar_t__ omapdss_get_version () ;

__attribute__((used)) static void dpi_init_pll(struct dpi_data *dpi)
{
 struct dss_pll *pll;

 if (dpi->pll)
  return;

 pll = dpi_get_pll(dpi->output.dispc_channel);
 if (!pll)
  return;


 if (omapdss_get_version() == OMAPDSS_VER_DRA7xx)
  dss_ctrl_pll_set_control_mux(pll->id, dpi->output.dispc_channel);

 if (dpi_verify_dsi_pll(pll)) {
  DSSWARN("DSI PLL not operational\n");
  return;
 }

 dpi->pll = pll;
}
