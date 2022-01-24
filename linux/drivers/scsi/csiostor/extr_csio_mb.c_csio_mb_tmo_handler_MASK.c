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
struct fw_cmd_hdr {int /*<<< orphan*/  lo; int /*<<< orphan*/  hi; } ;
struct csio_mbm {struct csio_mb* mcurrent; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_hw {int /*<<< orphan*/  pfn; struct csio_mbm mbm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_mbm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC4 (struct csio_hw*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_tmo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

struct csio_mb *
FUNC7(struct csio_hw *hw)
{
	struct csio_mbm *mbm = &hw->mbm;
	struct csio_mb *mbp =  mbm->mcurrent;
	struct fw_cmd_hdr *fw_hdr;

	/*
	 * Could be a race b/w the completion handler and the timer
	 * and the completion handler won that race.
	 */
	if (mbp == NULL) {
		FUNC0(0);
		return NULL;
	}

	fw_hdr = (struct fw_cmd_hdr *)(mbp->mb);

	FUNC4(hw, "Mailbox num:%x op:0x%x timed out\n", hw->pfn,
		    FUNC2(FUNC6(fw_hdr->hi)));

	mbm->mcurrent = NULL;
	FUNC1(mbm, n_tmo);
	fw_hdr->lo = FUNC5(FUNC3(FW_ETIMEDOUT));

	return mbp;
}