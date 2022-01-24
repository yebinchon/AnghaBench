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
typedef  int u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct dw_spi_mscc {scalar_t__ syscon; scalar_t__ spi_mst; } ;
struct TYPE_2__ {int /*<<< orphan*/  set_cs; } ;
struct dw_spi_mmio {struct dw_spi_mscc* priv; TYPE_1__ dws; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  MSCC_CPU_SYSTEM_CTRL_GENERAL_CTRL ; 
 int MSCC_IF_SI_OWNER_MASK ; 
 int MSCC_IF_SI_OWNER_SIMC ; 
 scalar_t__ MSCC_SPI_MST_SW_MODE ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct dw_spi_mscc* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct platform_device*,int) ; 
 int /*<<< orphan*/  dw_spi_mscc_set_cs ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev,
			    struct dw_spi_mmio *dwsmmio,
			    const char *cpu_syscon, u32 if_si_owner_offset)
{
	struct dw_spi_mscc *dwsmscc;

	dwsmscc = FUNC3(&pdev->dev, sizeof(*dwsmscc), GFP_KERNEL);
	if (!dwsmscc)
		return -ENOMEM;

	dwsmscc->spi_mst = FUNC4(pdev, 1);
	if (FUNC0(dwsmscc->spi_mst)) {
		FUNC2(&pdev->dev, "SPI_MST region map failed\n");
		return FUNC1(dwsmscc->spi_mst);
	}

	dwsmscc->syscon = FUNC6(cpu_syscon);
	if (FUNC0(dwsmscc->syscon))
		return FUNC1(dwsmscc->syscon);

	/* Deassert all CS */
	FUNC7(0, dwsmscc->spi_mst + MSCC_SPI_MST_SW_MODE);

	/* Select the owner of the SI interface */
	FUNC5(dwsmscc->syscon, MSCC_CPU_SYSTEM_CTRL_GENERAL_CTRL,
			   MSCC_IF_SI_OWNER_MASK << if_si_owner_offset,
			   MSCC_IF_SI_OWNER_SIMC << if_si_owner_offset);

	dwsmmio->dws.set_cs = dw_spi_mscc_set_cs;
	dwsmmio->priv = dwsmscc;

	return 0;
}