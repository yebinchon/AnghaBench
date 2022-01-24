#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dss_pll {int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int /*<<< orphan*/  dispc_channel; } ;
struct dpi_data {struct dss_pll* pll; TYPE_1__ output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ OMAPDSS_VER_DRA7xx ; 
 struct dss_pll* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct dss_pll*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct dpi_data *dpi)
{
	struct dss_pll *pll;

	if (dpi->pll)
		return;

	pll = FUNC1(dpi->output.dispc_channel);
	if (!pll)
		return;

	/* On DRA7 we need to set a mux to use the PLL */
	if (FUNC4() == OMAPDSS_VER_DRA7xx)
		FUNC3(pll->id, dpi->output.dispc_channel);

	if (FUNC2(pll)) {
		FUNC0("DSI PLL not operational\n");
		return;
	}

	dpi->pll = pll;
}