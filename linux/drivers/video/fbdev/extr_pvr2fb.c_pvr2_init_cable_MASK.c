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

/* Variables and functions */
 int CT_COMPOSITE ; 
 int CT_RGB ; 
 int /*<<< orphan*/  PCTRA ; 
 int /*<<< orphan*/  PDTRA ; 
 int /*<<< orphan*/  VOUTC ; 
 int cable_type ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void)
{
	if (cable_type < 0) {
		FUNC2((FUNC0(PCTRA) & 0xfff0ffff) | 0x000a0000,
	                  PCTRA);
		cable_type = (FUNC1(PDTRA) >> 8) & 3;
	}

	/* Now select the output format (either composite or other) */
	/* XXX: Save the previous val first, as this reg is also AICA
	  related */
	if (cable_type == CT_COMPOSITE)
		FUNC2(3 << 8, VOUTC);
	else if (cable_type == CT_RGB)
		FUNC2(1 << 9, VOUTC);
	else
		FUNC2(0, VOUTC);

	return cable_type;
}