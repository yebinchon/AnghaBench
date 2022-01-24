#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct dcon_priv {int disp_mode; TYPE_1__* client; } ;
struct TYPE_4__ {int (* init ) (struct dcon_priv*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCON_REG_ID ; 
 int DCON_REG_MEM_OPT_A ; 
 int DCON_REG_MEM_OPT_B ; 
 int DCON_REG_MODE ; 
 int DCON_REG_SCAN_INT ; 
 int ENODEV ; 
 int ENXIO ; 
 int MEM_DLL_CLOCK_DELAY ; 
 int MEM_POWER_DOWN ; 
 int MEM_SOFT_RESET ; 
 int MODE_BL_ENABLE ; 
 int MODE_COL_AA ; 
 int MODE_CSWIZZLE ; 
 int MODE_PASSTHRU ; 
 int FUNC0 (struct dcon_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dcon_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* pdata ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int resumeline ; 
 int FUNC5 (struct dcon_priv*) ; 

__attribute__((used)) static int FUNC6(struct dcon_priv *dcon, int is_init)
{
	u16 ver;
	int rc = 0;

	ver = FUNC0(dcon, DCON_REG_ID);
	if ((ver >> 8) != 0xDC) {
		FUNC3("DCON ID not 0xDCxx: 0x%04x instead.\n", ver);
		rc = -ENXIO;
		goto err;
	}

	if (is_init) {
		FUNC4("Discovered DCON version %x\n", ver & 0xFF);
		rc = pdata->init(dcon);
		if (rc != 0) {
			FUNC3("Unable to init.\n");
			goto err;
		}
	}

	if (ver < 0xdc02) {
		FUNC2(&dcon->client->dev,
			"DCON v1 is unsupported, giving up..\n");
		rc = -ENODEV;
		goto err;
	}

	/* SDRAM setup/hold time */
	FUNC1(dcon, 0x3a, 0xc040);
	FUNC1(dcon, DCON_REG_MEM_OPT_A, 0x0000);  /* clear option bits */
	FUNC1(dcon, DCON_REG_MEM_OPT_A,
		   MEM_DLL_CLOCK_DELAY | MEM_POWER_DOWN);
	FUNC1(dcon, DCON_REG_MEM_OPT_B, MEM_SOFT_RESET);

	/* Colour swizzle, AA, no passthrough, backlight */
	if (is_init) {
		dcon->disp_mode = MODE_PASSTHRU | MODE_BL_ENABLE |
				MODE_CSWIZZLE | MODE_COL_AA;
	}
	FUNC1(dcon, DCON_REG_MODE, dcon->disp_mode);

	/* Set the scanline to interrupt on during resume */
	FUNC1(dcon, DCON_REG_SCAN_INT, resumeline);

err:
	return rc;
}