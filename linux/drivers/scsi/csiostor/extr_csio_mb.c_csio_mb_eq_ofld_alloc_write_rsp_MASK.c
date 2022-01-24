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
struct fw_eq_ofld_cmd {int /*<<< orphan*/  physeqid_pkd; int /*<<< orphan*/  eqid_pkd; int /*<<< orphan*/  alloc_to_len16; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_hw {int dummy; } ;
struct csio_eq_params {int /*<<< orphan*/  eqid; int /*<<< orphan*/  physeqid; } ;
typedef  enum fw_retval { ____Placeholder_fw_retval } fw_retval ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FW_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct csio_hw *hw,
				struct csio_mb *mbp, enum fw_retval *ret_val,
				struct csio_eq_params *eq_ofld_params)
{
	struct fw_eq_ofld_cmd *rsp = (struct fw_eq_ofld_cmd *)(mbp->mb);

	*ret_val = FUNC0(FUNC3(rsp->alloc_to_len16));

	if (*ret_val == FW_SUCCESS) {
		eq_ofld_params->eqid = FUNC1(
						FUNC3(rsp->eqid_pkd));
		eq_ofld_params->physeqid = FUNC2(
						FUNC3(rsp->physeqid_pkd));
	} else
		eq_ofld_params->eqid = 0;

}