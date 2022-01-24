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
 unsigned char OBD_SEND_START ; 
 unsigned char OBD_SEND_STOP ; 
 scalar_t__ PCF8584_CSR ; 
 scalar_t__ PCF8584_DATA ; 
 int STATUS_LRB ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ i2c ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,scalar_t__) ; 

__attribute__((used)) static int FUNC4(unsigned char addr)
{
	FUNC0();

	/* Load address. */
	FUNC3(addr + 1, i2c + PCF8584_DATA);

	FUNC0();

	FUNC3(OBD_SEND_START, i2c + PCF8584_CSR);

	/* Wait for PIN. */
	FUNC1();

	/* CSR 0 means acknowledged. */
	if (!(FUNC2(i2c + PCF8584_CSR) & STATUS_LRB)) {
		return FUNC2(i2c + PCF8584_DATA);
	} else {
		FUNC3(OBD_SEND_STOP, i2c + PCF8584_CSR);
		return 0;
	}
}