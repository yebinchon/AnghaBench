#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ufshcd_lrb {scalar_t__ cmd; } ;
struct TYPE_4__ {int /*<<< orphan*/  tag_wq; struct completion* complete; } ;
struct ufs_hba {int /*<<< orphan*/  clk_scaling_lock; TYPE_2__ dev_cmd; TYPE_1__* host; struct ufshcd_lrb* lrb; } ;
struct completion {int dummy; } ;
typedef  enum dev_cmd_type { ____Placeholder_dev_cmd_type } dev_cmd_type ;
struct TYPE_3__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct completion*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct ufs_hba*,int,char*) ; 
 int FUNC6 (struct ufs_hba*,struct ufshcd_lrb*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ufs_hba*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct ufs_hba*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ufs_hba*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ufs_hba*,int,int) ; 
 int FUNC11 (struct ufs_hba*,struct ufshcd_lrb*,int) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 () ; 

__attribute__((used)) static int FUNC17(struct ufs_hba *hba,
		enum dev_cmd_type cmd_type, int timeout)
{
	struct ufshcd_lrb *lrbp;
	int err;
	int tag;
	struct completion wait;
	unsigned long flags;

	FUNC1(&hba->clk_scaling_lock);

	/*
	 * Get free slot, sleep if slots are unavailable.
	 * Even though we use wait_event() which sleeps indefinitely,
	 * the maximum wait time is bounded by SCSI request timeout.
	 */
	FUNC14(hba->dev_cmd.tag_wq, FUNC7(hba, &tag));

	FUNC2(&wait);
	lrbp = &hba->lrb[tag];
	FUNC0(lrbp->cmd);
	err = FUNC6(hba, lrbp, cmd_type, tag);
	if (FUNC12(err))
		goto out_put_tag;

	hba->dev_cmd.complete = &wait;

	FUNC5(hba, tag, "query_send");
	/* Make sure descriptors are ready before ringing the doorbell */
	FUNC16();
	FUNC3(hba->host->host_lock, flags);
	FUNC10(hba, tag, (lrbp->cmd ? true : false));
	FUNC9(hba, tag);
	FUNC4(hba->host->host_lock, flags);

	err = FUNC11(hba, lrbp, timeout);

	FUNC5(hba, tag,
			err ? "query_complete_err" : "query_complete");

out_put_tag:
	FUNC8(hba, tag);
	FUNC15(&hba->dev_cmd.tag_wq);
	FUNC13(&hba->clk_scaling_lock);
	return err;
}