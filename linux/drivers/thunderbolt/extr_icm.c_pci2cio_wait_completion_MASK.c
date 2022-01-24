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
typedef  int u32 ;
struct icm {scalar_t__ vnd_cap; int /*<<< orphan*/  upstream_port; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ PCIE2CIO_CMD ; 
 int PCIE2CIO_CMD_START ; 
 int PCIE2CIO_CMD_TIMEOUT ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct icm *icm, unsigned long timeout_msec)
{
	unsigned long end = jiffies + FUNC0(timeout_msec);
	u32 cmd;

	do {
		FUNC2(icm->upstream_port,
				      icm->vnd_cap + PCIE2CIO_CMD, &cmd);
		if (!(cmd & PCIE2CIO_CMD_START)) {
			if (cmd & PCIE2CIO_CMD_TIMEOUT)
				break;
			return 0;
		}

		FUNC1(50);
	} while (FUNC3(jiffies, end));

	return -ETIMEDOUT;
}