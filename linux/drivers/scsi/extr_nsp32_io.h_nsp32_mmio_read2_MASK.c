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
 scalar_t__ NSP32_MMIO_OFFSET ; 
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short volatile*) ; 

__attribute__((used)) static inline unsigned short FUNC2(unsigned long base,
					      unsigned int  index)
{
	volatile unsigned short *ptr;

	ptr = (unsigned short *)(base + NSP32_MMIO_OFFSET + index);

	return FUNC0(FUNC1(ptr));
}