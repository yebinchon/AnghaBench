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
 unsigned char RS5C313_CNTBIT_AD ; 
 unsigned char RS5C313_CNTBIT_READ ; 
 unsigned char FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 

__attribute__((used)) static unsigned char FUNC2(unsigned char addr)
{

	FUNC1(addr | RS5C313_CNTBIT_READ | RS5C313_CNTBIT_AD);
	return FUNC0();
}