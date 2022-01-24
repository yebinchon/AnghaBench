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
typedef  int /*<<< orphan*/  u8 ;
struct fpgaimage {int lendata; scalar_t__ fpgadata; } ;
typedef  enum wbus { ____Placeholder_wbus } wbus ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int EINVAL ; 
 int EIO ; 
 int MAX_WAIT_DONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct fpgaimage *fimage, enum wbus bus_bytes)
{
	u8 *bitdata;
	int size, i, cnt;

	cnt = 0;
	bitdata = (u8 *)fimage->fpgadata;
	size = fimage->lendata;

#ifdef DEBUG_FPGA
	print_hex_dump_bytes("bitfile sample: ", DUMP_PREFIX_OFFSET,
			     bitdata, 0x100);
#endif /* DEBUG_FPGA */
	if (!FUNC11(bus_bytes)) {
		FUNC1("unsupported program bus width %d\n",
		       bus_bytes);
		return -EINVAL;
	}

	/* Bring csi_b, rdwr_b Low and program_b High */
	FUNC7(1);
	FUNC8(0);
	FUNC4(0);

	/* Configuration reset */
	FUNC7(0);
	FUNC0(20);
	FUNC7(1);

	/* Wait for Device Initialization */
	while (FUNC6() == 0)
		;

	FUNC2("device init done\n");

	for (i = 0; i < size; i += bus_bytes)
		FUNC9(bus_bytes, bitdata + i);

	FUNC2("program done\n");

	/* Check INIT_B */
	if (FUNC6() == 0) {
		FUNC1("init_b 0\n");
		return -EIO;
	}

	while (FUNC5() == 0) {
		if (cnt++ > MAX_WAIT_DONE) {
			FUNC1("init_B %d\n", FUNC6());
			break;
		}
	}

	if (cnt > MAX_WAIT_DONE) {
		FUNC1("fpga download fail\n");
		return -EIO;
	}

	FUNC2("download fpgaimage\n");

	/* Compensate for Special Startup Conditions */
	FUNC10(8);

	return 0;
}