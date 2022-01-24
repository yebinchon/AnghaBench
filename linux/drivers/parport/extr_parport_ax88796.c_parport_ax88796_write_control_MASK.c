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
struct parport {int dummy; } ;
struct ax_drvdata {int /*<<< orphan*/  dev; int /*<<< orphan*/  spp_cpr; } ;

/* Variables and functions */
 unsigned int AX_CPR_ATFD ; 
 unsigned int AX_CPR_SLCTIN ; 
 unsigned int AX_CPR_STRB ; 
 unsigned int AX_CPR_nDOE ; 
 unsigned int AX_CPR_nINIT ; 
 unsigned char PARPORT_CONTROL_AUTOFD ; 
 unsigned char PARPORT_CONTROL_INIT ; 
 unsigned char PARPORT_CONTROL_SELECT ; 
 unsigned char PARPORT_CONTROL_STROBE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned char,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned char,unsigned char) ; 
 unsigned char FUNC2 (struct parport*) ; 
 struct ax_drvdata* FUNC3 (struct parport*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct parport *p, unsigned char control)
{
	struct ax_drvdata *dd = FUNC3(p);
	unsigned int cpr = FUNC4(dd->spp_cpr);

	cpr &= AX_CPR_nDOE;

	if (!(control & PARPORT_CONTROL_STROBE))
		cpr |= AX_CPR_STRB;

	if (!(control & PARPORT_CONTROL_AUTOFD))
		cpr |= AX_CPR_ATFD;

	if (control & PARPORT_CONTROL_INIT)
		cpr |= AX_CPR_nINIT;

	if (!(control & PARPORT_CONTROL_SELECT))
		cpr |= AX_CPR_SLCTIN;

	FUNC0(dd->dev, "write_control: ctrl=%02x, cpr=%02x\n", control, cpr);
	FUNC5(cpr, dd->spp_cpr);

	if (FUNC2(p) != control) {
		FUNC1(dd->dev, "write_control: read != set (%02x, %02x)\n",
			FUNC2(p), control);
	}
}