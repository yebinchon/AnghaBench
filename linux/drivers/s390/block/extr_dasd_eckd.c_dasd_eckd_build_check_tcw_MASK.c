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
struct tidaw {int cpmode; int expires; int /*<<< orphan*/  flags; int /*<<< orphan*/  status; int /*<<< orphan*/  buildclk; int /*<<< orphan*/  retries; struct dasd_device* basedev; struct dasd_device* memdev; struct dasd_device* startdev; int /*<<< orphan*/  cpaddr; int /*<<< orphan*/  data; } ;
struct itcw {int cpmode; int expires; int /*<<< orphan*/  flags; int /*<<< orphan*/  status; int /*<<< orphan*/  buildclk; int /*<<< orphan*/  retries; struct dasd_device* basedev; struct dasd_device* memdev; struct dasd_device* startdev; int /*<<< orphan*/  cpaddr; int /*<<< orphan*/  data; } ;
struct format_data_t {int stop_unit; int start_unit; } ;
struct eckd_count {int dummy; } ;
struct dasd_eckd_private {int /*<<< orphan*/  count; } ;
struct dasd_device {int default_expires; int /*<<< orphan*/  default_retries; struct dasd_eckd_private* private; } ;
struct dasd_ccw_req {int cpmode; int expires; int /*<<< orphan*/  flags; int /*<<< orphan*/  status; int /*<<< orphan*/  buildclk; int /*<<< orphan*/  retries; struct dasd_device* basedev; struct dasd_device* memdev; struct dasd_device* startdev; int /*<<< orphan*/  cpaddr; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_CQR_FILLED ; 
 int /*<<< orphan*/  DASD_CQR_SUPPRESS_FP ; 
 int /*<<< orphan*/  DASD_CQR_SUPPRESS_IL ; 
 int /*<<< orphan*/  DASD_ECKD_CCW_READ_COUNT_MT ; 
 int /*<<< orphan*/  DASD_ECKD_MAGIC ; 
 int EINVAL ; 
 struct tidaw* FUNC0 (int) ; 
 int HZ ; 
 scalar_t__ FUNC1 (struct tidaw*) ; 
 int /*<<< orphan*/  ITCW_OP_READ ; 
 int /*<<< orphan*/  TIDAW_FLAGS_LAST ; 
 struct dasd_device* FUNC2 (struct dasd_device*) ; 
 struct tidaw* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct tidaw*,struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct tidaw* FUNC6 (struct tidaw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tidaw*) ; 
 int /*<<< orphan*/  FUNC9 (struct tidaw*) ; 
 struct tidaw* FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct tidaw*,int,int,int /*<<< orphan*/ ,struct dasd_device*,struct dasd_device*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dasd_ccw_req *
FUNC13(struct dasd_device *base, struct format_data_t *fdata,
			  int enable_pav, struct eckd_count *fmt_buffer,
			  int rpt)
{
	struct dasd_eckd_private *start_priv;
	struct dasd_device *startdev = NULL;
	struct tidaw *last_tidaw = NULL;
	struct dasd_ccw_req *cqr;
	struct itcw *itcw;
	int itcw_size;
	int count;
	int rc;
	int i;

	if (enable_pav)
		startdev = FUNC2(base);

	if (!startdev)
		startdev = base;

	start_priv = startdev->private;

	count = rpt * (fdata->stop_unit - fdata->start_unit + 1);

	/*
	 * we're adding 'count' amount of tidaw to the itcw.
	 * calculate the corresponding itcw_size
	 */
	itcw_size = FUNC7(0, count, 0);

	cqr = FUNC3(DASD_ECKD_MAGIC, 0, itcw_size, startdev);
	if (FUNC1(cqr))
		return cqr;

	start_priv->count++;

	itcw = FUNC10(cqr->data, itcw_size, ITCW_OP_READ, 0, count, 0);
	if (FUNC1(itcw)) {
		rc = -EINVAL;
		goto out_err;
	}

	cqr->cpaddr = FUNC9(itcw);
	rc = FUNC11(itcw, fdata->start_unit, fdata->stop_unit,
			  DASD_ECKD_CCW_READ_COUNT_MT, base, startdev, 0, count,
			  sizeof(struct eckd_count),
			  count * sizeof(struct eckd_count), 0, rpt);
	if (rc)
		goto out_err;

	for (i = 0; i < count; i++) {
		last_tidaw = FUNC6(itcw, 0, fmt_buffer++,
					    sizeof(struct eckd_count));
		if (FUNC1(last_tidaw)) {
			rc = -EINVAL;
			goto out_err;
		}
	}

	last_tidaw->flags |= TIDAW_FLAGS_LAST;
	FUNC8(itcw);

	cqr->cpmode = 1;
	cqr->startdev = startdev;
	cqr->memdev = startdev;
	cqr->basedev = base;
	cqr->retries = startdev->default_retries;
	cqr->expires = startdev->default_expires * HZ;
	cqr->buildclk = FUNC5();
	cqr->status = DASD_CQR_FILLED;
	/* Set flags to suppress output for expected errors */
	FUNC12(DASD_CQR_SUPPRESS_FP, &cqr->flags);
	FUNC12(DASD_CQR_SUPPRESS_IL, &cqr->flags);

	return cqr;

out_err:
	FUNC4(cqr, startdev);

	return FUNC0(rc);
}