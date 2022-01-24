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
struct snic_disc {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  req_cnt; } ;
struct snic {int /*<<< orphan*/  shost; int /*<<< orphan*/  snic_lock; scalar_t__ in_remove; struct snic_disc disc; } ;

/* Variables and functions */
 scalar_t__ SNIC_DISC_PENDING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct snic*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC8(struct snic *snic)
{
	struct snic_disc *disc = &snic->disc;
	unsigned long flags;
	int ret = 0;

	FUNC2(snic->shost, "Discovery Start.\n");

	FUNC6(&snic->snic_lock, flags);
	if (snic->in_remove) {
		FUNC7(&snic->snic_lock, flags);
		FUNC0("snic driver removal in progress ...\n");
		ret = 0;

		return ret;
	}
	FUNC7(&snic->snic_lock, flags);

	FUNC3(&disc->mutex);
	if (disc->state == SNIC_DISC_PENDING) {
		disc->req_cnt++;
		FUNC4(&disc->mutex);

		return ret;
	}
	disc->state = SNIC_DISC_PENDING;
	FUNC4(&disc->mutex);

	ret = FUNC5(snic);
	if (ret)
		FUNC1(snic->shost, "Discovery Failed, err=%d.\n", ret);

	return ret;
}