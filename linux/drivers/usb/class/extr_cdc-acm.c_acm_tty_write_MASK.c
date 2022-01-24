#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {struct acm* driver_data; } ;
struct acm_wb {int len; int /*<<< orphan*/  urb; scalar_t__ use; int /*<<< orphan*/  buf; } ;
struct acm {int writesize; int /*<<< orphan*/  write_lock; int /*<<< orphan*/  delayed; scalar_t__ susp_count; int /*<<< orphan*/  control; TYPE_1__* data; int /*<<< orphan*/  dev; struct acm_wb* wb; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct acm*,struct acm_wb*) ; 
 int FUNC1 (struct acm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct tty_struct *tty,
					const unsigned char *buf, int count)
{
	struct acm *acm = tty->driver_data;
	int stat;
	unsigned long flags;
	int wbn;
	struct acm_wb *wb;

	if (!count)
		return 0;

	FUNC2(&acm->data->dev, "%d bytes from tty layer\n", count);

	FUNC4(&acm->write_lock, flags);
	wbn = FUNC1(acm);
	if (wbn < 0) {
		FUNC5(&acm->write_lock, flags);
		return 0;
	}
	wb = &acm->wb[wbn];

	if (!acm->dev) {
		wb->use = 0;
		FUNC5(&acm->write_lock, flags);
		return -ENODEV;
	}

	count = (count > acm->writesize) ? acm->writesize : count;
	FUNC2(&acm->data->dev, "writing %d bytes\n", count);
	FUNC3(wb->buf, buf, count);
	wb->len = count;

	stat = FUNC7(acm->control);
	if (stat) {
		wb->use = 0;
		FUNC5(&acm->write_lock, flags);
		return stat;
	}

	if (acm->susp_count) {
		FUNC6(wb->urb, &acm->delayed);
		FUNC5(&acm->write_lock, flags);
		return count;
	}

	stat = FUNC0(acm, wb);
	FUNC5(&acm->write_lock, flags);

	if (stat < 0)
		return stat;
	return count;
}