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
 scalar_t__ PCF8584_CSR ; 
 scalar_t__ PCF8584_DATA ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ i2c ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,scalar_t__) ; 

__attribute__((used)) static void FUNC2(unsigned char addr)
{
	FUNC0();
	FUNC1(addr, i2c + PCF8584_DATA);

	/* Generate Start condition. */
	FUNC1(OBD_SEND_START, i2c + PCF8584_CSR);
}