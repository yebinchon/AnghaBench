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
struct fsg_common {int /*<<< orphan*/  fsg; struct fsg_buffhd* next_buffhd_to_fill; } ;
struct fsg_buffhd {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUF_STATE_EMPTY ; 
 int EIO ; 
 int /*<<< orphan*/  US_BULK_CB_WRAP_LEN ; 
 scalar_t__ FUNC0 (struct fsg_common*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct fsg_buffhd*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsg_common*,struct fsg_buffhd*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fsg_common*,int,struct fsg_buffhd*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsg_common*,struct fsg_buffhd*) ; 

__attribute__((used)) static int FUNC5(struct fsg_common *common)
{
	struct fsg_buffhd	*bh;
	int			rc = 0;

	/* Wait for the next buffer to become available */
	bh = common->next_buffhd_to_fill;
	rc = FUNC3(common, true, bh);
	if (rc)
		return rc;

	/* Queue a request to read a Bulk-only CBW */
	FUNC2(common, bh, US_BULK_CB_WRAP_LEN);
	if (!FUNC4(common, bh))
		/* Don't know what to do if common->fsg is NULL */
		return -EIO;

	/*
	 * We will drain the buffer in software, which means we
	 * can reuse it for the next filling.  No need to advance
	 * next_buffhd_to_fill.
	 */

	/* Wait for the CBW to arrive */
	rc = FUNC3(common, true, bh);
	if (rc)
		return rc;

	rc = FUNC0(common) ? FUNC1(common->fsg, bh) : -EIO;
	bh->state = BUF_STATE_EMPTY;

	return rc;
}