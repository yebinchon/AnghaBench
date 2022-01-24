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
typedef  int u32 ;
struct dwc3 {int /*<<< orphan*/  regs; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_GSBUSCFG0 ; 
 int DWC3_GSBUSCFG0_INCR128BRSTENA ; 
 int DWC3_GSBUSCFG0_INCR16BRSTENA ; 
 int DWC3_GSBUSCFG0_INCR256BRSTENA ; 
 int DWC3_GSBUSCFG0_INCR32BRSTENA ; 
 int DWC3_GSBUSCFG0_INCR4BRSTENA ; 
 int DWC3_GSBUSCFG0_INCR64BRSTENA ; 
 int DWC3_GSBUSCFG0_INCR8BRSTENA ; 
 int DWC3_GSBUSCFG0_INCRBRSTENA ; 
 int DWC3_GSBUSCFG0_INCRBRST_MASK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INCRX_BURST_MODE ; 
 int INCRX_UNDEF_LENGTH_BURST_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct device*,char*,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 

__attribute__((used)) static void FUNC7(struct dwc3 *dwc)
{
	struct device *dev = dwc->dev;
	/* incrx_mode : for INCR burst type. */
	bool incrx_mode;
	/* incrx_size : for size of INCRX burst. */
	u32 incrx_size;
	u32 *vals;
	u32 cfg;
	int ntype;
	int ret;
	int i;

	cfg = FUNC3(dwc->regs, DWC3_GSBUSCFG0);

	/*
	 * Handle property "snps,incr-burst-type-adjustment".
	 * Get the number of value from this property:
	 * result <= 0, means this property is not supported.
	 * result = 1, means INCRx burst mode supported.
	 * result > 1, means undefined length burst mode supported.
	 */
	ntype = FUNC1(dev, "snps,incr-burst-type-adjustment");
	if (ntype <= 0)
		return;

	vals = FUNC5(ntype, sizeof(u32), GFP_KERNEL);
	if (!vals) {
		FUNC0(dev, "Error to get memory\n");
		return;
	}

	/* Get INCR burst type, and parse it */
	ret = FUNC2(dev,
			"snps,incr-burst-type-adjustment", vals, ntype);
	if (ret) {
		FUNC6(vals);
		FUNC0(dev, "Error to get property\n");
		return;
	}

	incrx_size = *vals;

	if (ntype > 1) {
		/* INCRX (undefined length) burst mode */
		incrx_mode = INCRX_UNDEF_LENGTH_BURST_MODE;
		for (i = 1; i < ntype; i++) {
			if (vals[i] > incrx_size)
				incrx_size = vals[i];
		}
	} else {
		/* INCRX burst mode */
		incrx_mode = INCRX_BURST_MODE;
	}

	FUNC6(vals);

	/* Enable Undefined Length INCR Burst and Enable INCRx Burst */
	cfg &= ~DWC3_GSBUSCFG0_INCRBRST_MASK;
	if (incrx_mode)
		cfg |= DWC3_GSBUSCFG0_INCRBRSTENA;
	switch (incrx_size) {
	case 256:
		cfg |= DWC3_GSBUSCFG0_INCR256BRSTENA;
		break;
	case 128:
		cfg |= DWC3_GSBUSCFG0_INCR128BRSTENA;
		break;
	case 64:
		cfg |= DWC3_GSBUSCFG0_INCR64BRSTENA;
		break;
	case 32:
		cfg |= DWC3_GSBUSCFG0_INCR32BRSTENA;
		break;
	case 16:
		cfg |= DWC3_GSBUSCFG0_INCR16BRSTENA;
		break;
	case 8:
		cfg |= DWC3_GSBUSCFG0_INCR8BRSTENA;
		break;
	case 4:
		cfg |= DWC3_GSBUSCFG0_INCR4BRSTENA;
		break;
	case 1:
		break;
	default:
		FUNC0(dev, "Invalid property\n");
		break;
	}

	FUNC4(dwc->regs, DWC3_GSBUSCFG0, cfg);
}