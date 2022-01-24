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
typedef  int u8 ;
typedef  int u32 ;
struct ufx_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EDID_LENGTH ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (struct ufx_data*) ; 
 int FUNC7 (struct ufx_data*) ; 
 int FUNC8 (struct ufx_data*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ufx_data*,int,int) ; 

__attribute__((used)) static int FUNC10(struct ufx_data *dev, u8 *edid, int edid_len)
{
	int i, j, status;
	u32 *edid_u32 = (u32 *)edid;

	FUNC0(edid_len != EDID_LENGTH);

	status = FUNC6(dev);
	if (status < 0) {
		FUNC4("ufx_i2c_configure failed");
		return status;
	}

	FUNC2(edid, 0xff, EDID_LENGTH);

	/* Read the 128-byte EDID as 2 bursts of 64 bytes */
	for (i = 0; i < 2; i++) {
		u32 temp = 0x28070000 | (63 << 20) | (((u32)(i * 64)) << 8);
		status = FUNC9(dev, 0x1100, temp);
		FUNC1(status, "Failed to write 0x1100");

		temp |= 0x80000000;
		status = FUNC9(dev, 0x1100, temp);
		FUNC1(status, "Failed to write 0x1100");

		status = FUNC7(dev);
		FUNC1(status, "Timeout waiting for I2C BUSY to clear");

		for (j = 0; j < 16; j++) {
			u32 data_reg_addr = 0x1110 + (j * 4);
			status = FUNC8(dev, data_reg_addr, edid_u32++);
			FUNC1(status, "Error reading i2c data");
		}
	}

	/* all FF's in the first 16 bytes indicates nothing is connected */
	for (i = 0; i < 16; i++) {
		if (edid[i] != 0xFF) {
			FUNC3("edid data read successfully");
			return EDID_LENGTH;
		}
	}

	FUNC5("edid data contains all 0xff");
	return -ETIMEDOUT;
}