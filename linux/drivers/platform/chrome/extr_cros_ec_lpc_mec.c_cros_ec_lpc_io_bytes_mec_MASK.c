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
typedef  scalar_t__ u8 ;
typedef  enum cros_ec_lpc_mec_io_type { ____Placeholder_cros_ec_lpc_mec_io_type } cros_ec_lpc_mec_io_type ;
typedef  enum cros_ec_lpc_mec_emi_access_mode { ____Placeholder_cros_ec_lpc_mec_emi_access_mode } cros_ec_lpc_mec_emi_access_mode ;

/* Variables and functions */
 int ACCESS_TYPE_BYTE ; 
 int ACCESS_TYPE_LONG_AUTO_INCREMENT ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int MEC_IO_READ ; 
 int MEC_IO_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  io_mutex ; 
 scalar_t__ mec_emi_base ; 
 scalar_t__ mec_emi_end ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 

u8 FUNC8(enum cros_ec_lpc_mec_io_type io_type,
			    unsigned int offset, unsigned int length,
			    u8 *buf)
{
	int i = 0;
	int io_addr;
	u8 sum = 0;
	enum cros_ec_lpc_mec_emi_access_mode access, new_access;

	/* Return checksum of 0 if window is not initialized */
	FUNC2(mec_emi_base == 0 || mec_emi_end == 0);
	if (mec_emi_base == 0 || mec_emi_end == 0)
		return 0;

	/*
	 * Long access cannot be used on misaligned data since reading B0 loads
	 * the data register and writing B3 flushes.
	 */
	if (offset & 0x3 || length < 4)
		access = ACCESS_TYPE_BYTE;
	else
		access = ACCESS_TYPE_LONG_AUTO_INCREMENT;

	FUNC5(&io_mutex);

	/* Initialize I/O at desired address */
	FUNC3(offset, access);

	/* Skip bytes in case of misaligned offset */
	io_addr = FUNC0(mec_emi_base) + (offset & 0x3);
	while (i < length) {
		while (io_addr <= FUNC1(mec_emi_base)) {
			if (io_type == MEC_IO_READ)
				buf[i] = FUNC4(io_addr++);
			else
				FUNC7(buf[i], io_addr++);

			sum += buf[i++];
			offset++;

			/* Extra bounds check in case of misaligned length */
			if (i == length)
				goto done;
		}

		/*
		 * Use long auto-increment access except for misaligned write,
		 * since writing B3 triggers the flush.
		 */
		if (length - i < 4 && io_type == MEC_IO_WRITE)
			new_access = ACCESS_TYPE_BYTE;
		else
			new_access = ACCESS_TYPE_LONG_AUTO_INCREMENT;

		if (new_access != access ||
		    access != ACCESS_TYPE_LONG_AUTO_INCREMENT) {
			access = new_access;
			FUNC3(offset, access);
		}

		/* Access [B0, B3] on each loop pass */
		io_addr = FUNC0(mec_emi_base);
	}

done:
	FUNC6(&io_mutex);

	return sum;
}