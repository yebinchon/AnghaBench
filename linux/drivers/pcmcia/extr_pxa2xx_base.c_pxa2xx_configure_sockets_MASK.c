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
typedef  int /*<<< orphan*/  uint32_t ;
struct pcmcia_low_level {int first; int nr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MECR ; 
 int /*<<< orphan*/  MECR_CIT ; 
 int /*<<< orphan*/  MECR_NOS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 

void FUNC3(struct device *dev, struct pcmcia_low_level *ops)
{
	/*
	 * We have at least one socket, so set MECR:CIT
	 * (Card Is There)
	 */
	uint32_t mecr = MECR_CIT;

	/* Set MECR:NOS (Number Of Sockets) */
	if ((ops->first + ops->nr) > 1 ||
	    FUNC2() || FUNC1())
		mecr |= MECR_NOS;

	FUNC0(mecr, MECR);
}