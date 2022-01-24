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
struct ipr_ioa_cfg {int /*<<< orphan*/ * hrrq; } ;
struct ipr_cmnd {int dummy; } ;

/* Variables and functions */
 size_t IPR_INIT_HRRQ ; 
 struct ipr_cmnd* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ipr_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipr_lock_and_done ; 

__attribute__((used)) static
struct ipr_cmnd *FUNC2(struct ipr_ioa_cfg *ioa_cfg)
{
	struct ipr_cmnd *ipr_cmd =
		FUNC0(&ioa_cfg->hrrq[IPR_INIT_HRRQ]);
	FUNC1(ipr_cmd, ipr_lock_and_done);
	return ipr_cmd;
}