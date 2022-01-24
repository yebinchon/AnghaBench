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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MCXX_ASST_MASK ; 
 int MCXX_ASST_SHIFT ; 
 int MCXX_HOLD_MASK ; 
 int MCXX_HOLD_SHIFT ; 
 int MCXX_SETUP_MASK ; 
 int MCXX_SETUP_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5( int sock, int speed, int clock )
{
	uint32_t val;

	val = ((FUNC4(speed, clock)
		& MCXX_SETUP_MASK) << MCXX_SETUP_SHIFT)
		| ((FUNC2(speed, clock)
		& MCXX_ASST_MASK) << MCXX_ASST_SHIFT)
		| ((FUNC3(speed, clock)
		& MCXX_HOLD_MASK) << MCXX_HOLD_SHIFT);

	FUNC1(val, FUNC0(sock));

	return 0;
}