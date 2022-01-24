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
typedef  int /*<<< orphan*/  err_recov_pg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(unsigned char *p, int pcontrol, int target)
{	/* Read-Write Error Recovery page for mode_sense */
	unsigned char err_recov_pg[] = {0x1, 0xa, 0xc0, 11, 240, 0, 0, 0,
					5, 0, 0xff, 0xff};

	FUNC0(p, err_recov_pg, sizeof(err_recov_pg));
	if (1 == pcontrol)
		FUNC1(p + 2, 0, sizeof(err_recov_pg) - 2);
	return sizeof(err_recov_pg);
}