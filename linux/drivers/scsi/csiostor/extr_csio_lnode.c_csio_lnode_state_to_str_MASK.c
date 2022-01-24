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
struct csio_lnode {int dummy; } ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  scalar_t__ csio_sm_state_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct csio_lnode*) ; 
 scalar_t__ csio_lns_offline ; 
 scalar_t__ csio_lns_ready ; 
 scalar_t__ csio_lns_uninit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

void
FUNC2(struct csio_lnode *ln, int8_t *str)
{
	if (FUNC0(ln) == ((csio_sm_state_t)csio_lns_uninit)) {
		FUNC1(str, "UNINIT");
		return;
	}
	if (FUNC0(ln) == ((csio_sm_state_t)csio_lns_ready)) {
		FUNC1(str, "READY");
		return;
	}
	if (FUNC0(ln) == ((csio_sm_state_t)csio_lns_offline)) {
		FUNC1(str, "OFFLINE");
		return;
	}
	FUNC1(str, "UNKNOWN");
}