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
struct resource {int flags; int /*<<< orphan*/  start; } ;
struct rcar_pcie {int dummy; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int IORESOURCE_IO ; 
 int IO_SPACE ; 
 int PAR_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int SZ_128 ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rcar_pcie*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(int win, struct rcar_pcie *pcie,
				   struct resource *res)
{
	/* Setup PCIe address space mappings for each resource */
	resource_size_t size;
	resource_size_t res_start;
	u32 mask;

	FUNC6(pcie, 0x00000000, FUNC3(win));

	/*
	 * The PAMR mask is calculated in units of 128Bytes, which
	 * keeps things pretty simple.
	 */
	size = FUNC7(res);
	mask = (FUNC8(size) / SZ_128) - 1;
	FUNC6(pcie, mask << 7, FUNC1(win));

	if (res->flags & IORESOURCE_IO)
		res_start = FUNC5(res->start);
	else
		res_start = res->start;

	FUNC6(pcie, FUNC9(res_start), FUNC2(win));
	FUNC6(pcie, FUNC4(res_start) & ~0x7F,
			   FUNC0(win));

	/* First resource is for IO */
	mask = PAR_ENABLE;
	if (res->flags & IORESOURCE_IO)
		mask |= IO_SPACE;

	FUNC6(pcie, mask, FUNC3(win));
}