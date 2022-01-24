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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  fc_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  TCF_TARGET_RESET ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC1(fc_port_t *fcport, uint64_t l, int tag)
{
	return FUNC0(fcport, TCF_TARGET_RESET, l, tag);
}