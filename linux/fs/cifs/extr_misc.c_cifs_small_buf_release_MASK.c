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
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  cifs_sm_req_poolp ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smBufAllocCount ; 

void
FUNC3(void *buf_to_free)
{

	if (buf_to_free == NULL) {
		FUNC1(FYI, "Null buffer passed to cifs_small_buf_release\n");
		return;
	}
	FUNC2(buf_to_free, cifs_sm_req_poolp);

	FUNC0(&smBufAllocCount);
	return;
}