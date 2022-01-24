#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct platform_device {int dummy; } ;
struct dw_spi_mmio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCELOT_IF_SI_OWNER_OFFSET ; 
 int FUNC0 (struct platform_device*,struct dw_spi_mmio*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct platform_device *pdev,
				   struct dw_spi_mmio *dwsmmio)
{
	return FUNC0(pdev, dwsmmio, "mscc,ocelot-cpu-syscon",
				OCELOT_IF_SI_OWNER_OFFSET);
}