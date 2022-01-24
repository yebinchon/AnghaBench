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
struct ssb_pcicore {struct ssb_device* dev; } ;
struct TYPE_2__ {int revision; } ;
struct ssb_device {TYPE_1__ id; struct ssb_bus* bus; } ;
struct ssb_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSB_IMCFGLO ; 
 int SSB_IMCFGLO_REQTO ; 
 int SSB_IMCFGLO_REQTO_SHIFT ; 
 int SSB_IMCFGLO_SERTO ; 
 int /*<<< orphan*/  SSB_PCICORE_SBTOPCI2 ; 
 int SSB_PCICORE_SBTOPCI_BURST ; 
 int SSB_PCICORE_SBTOPCI_MRM ; 
 int SSB_PCICORE_SBTOPCI_PREF ; 
 int FUNC0 (struct ssb_pcicore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ssb_pcicore*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ssb_bus*) ; 
 int FUNC3 (struct ssb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ssb_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ssb_pcicore *pc)
{
	struct ssb_device *pdev = pc->dev;
	struct ssb_bus *bus = pdev->bus;
	u32 tmp;

	tmp = FUNC0(pc, SSB_PCICORE_SBTOPCI2);
	tmp |= SSB_PCICORE_SBTOPCI_PREF;
	tmp |= SSB_PCICORE_SBTOPCI_BURST;
	FUNC1(pc, SSB_PCICORE_SBTOPCI2, tmp);

	if (pdev->id.revision < 5) {
		tmp = FUNC3(pdev, SSB_IMCFGLO);
		tmp &= ~SSB_IMCFGLO_SERTO;
		tmp |= 2;
		tmp &= ~SSB_IMCFGLO_REQTO;
		tmp |= 3 << SSB_IMCFGLO_REQTO_SHIFT;
		FUNC4(pdev, SSB_IMCFGLO, tmp);
		FUNC2(bus);
	} else if (pdev->id.revision >= 11) {
		tmp = FUNC0(pc, SSB_PCICORE_SBTOPCI2);
		tmp |= SSB_PCICORE_SBTOPCI_MRM;
		FUNC1(pc, SSB_PCICORE_SBTOPCI2, tmp);
	}
}