#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_2__ {unsigned int loadaddr; unsigned int execaddr; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 

__attribute__((used)) static void
FUNC2(struct inode *inode, unsigned int secs)
{
	unsigned int high, low;

	if (FUNC1(inode)) {
		/* convert 32-bit seconds to 40-bit centi-seconds */
		low  = (secs & 255) * 100;
		high = (secs / 256) * 100 + (low >> 8) + 0x336e996a;

		FUNC0(inode)->loadaddr = (high >> 24) |
				(FUNC0(inode)->loadaddr & ~0xff);
		FUNC0(inode)->execaddr = (low & 255) | (high << 8);
	}
}