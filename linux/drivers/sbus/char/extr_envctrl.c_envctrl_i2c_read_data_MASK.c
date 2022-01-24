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
 int /*<<< orphan*/  CONTROL_ES0 ; 
 scalar_t__ PCF8584_CSR ; 
 scalar_t__ PCF8584_DATA ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ i2c ; 
 unsigned char FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static unsigned char FUNC3(void)
{
	FUNC0();
	FUNC2(CONTROL_ES0, i2c + PCF8584_CSR);  /* Send neg ack. */
	return FUNC1(i2c + PCF8584_DATA);
}