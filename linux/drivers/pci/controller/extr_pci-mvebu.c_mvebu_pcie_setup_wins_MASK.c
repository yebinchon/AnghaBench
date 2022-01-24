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
struct mvebu_pcie_port {int dummy; } ;
struct mbus_dram_window {int base; int size; int mbus_attr; } ;
struct mbus_dram_target_info {int num_cs; int mbus_dram_target_id; struct mbus_dram_window* cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  PCIE_WIN5_BASE_OFF ; 
 int /*<<< orphan*/  PCIE_WIN5_CTRL_OFF ; 
 int /*<<< orphan*/  PCIE_WIN5_REMAP_OFF ; 
 int FUNC6 (int) ; 
 struct mbus_dram_target_info* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct mvebu_pcie_port*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct mvebu_pcie_port *port)
{
	const struct mbus_dram_target_info *dram;
	u32 size;
	int i;

	dram = FUNC7();

	/* First, disable and clear BARs and windows. */
	for (i = 1; i < 3; i++) {
		FUNC8(port, 0, FUNC0(i));
		FUNC8(port, 0, FUNC2(i));
		FUNC8(port, 0, FUNC1(i));
	}

	for (i = 0; i < 5; i++) {
		FUNC8(port, 0, FUNC4(i));
		FUNC8(port, 0, FUNC3(i));
		FUNC8(port, 0, FUNC5(i));
	}

	FUNC8(port, 0, PCIE_WIN5_CTRL_OFF);
	FUNC8(port, 0, PCIE_WIN5_BASE_OFF);
	FUNC8(port, 0, PCIE_WIN5_REMAP_OFF);

	/* Setup windows for DDR banks.  Count total DDR size on the fly. */
	size = 0;
	for (i = 0; i < dram->num_cs; i++) {
		const struct mbus_dram_window *cs = dram->cs + i;

		FUNC8(port, cs->base & 0xffff0000,
			     FUNC3(i));
		FUNC8(port, 0, FUNC5(i));
		FUNC8(port,
			     ((cs->size - 1) & 0xffff0000) |
			     (cs->mbus_attr << 8) |
			     (dram->mbus_dram_target_id << 4) | 1,
			     FUNC4(i));

		size += cs->size;
	}

	/* Round up 'size' to the nearest power of two. */
	if ((size & (size - 1)) != 0)
		size = 1 << FUNC6(size);

	/* Setup BAR[1] to all DRAM banks. */
	FUNC8(port, dram->cs[0].base, FUNC2(1));
	FUNC8(port, 0, FUNC1(1));
	FUNC8(port, ((size - 1) & 0xffff0000) | 1,
		     FUNC0(1));
}