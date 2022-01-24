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
struct TYPE_2__ {scalar_t__ fw_ver; int /*<<< orphan*/ * wait; } ;
struct snic {int /*<<< orphan*/  snic_lock; TYPE_1__ fwinfo; int /*<<< orphan*/  shost; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct snic*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC10(struct snic *snic)
{
	FUNC0(wait);
	unsigned long flags;
	int ret;
	int nr_retries = 3;

	FUNC2(snic->shost, "Retrieving snic params.\n");
	FUNC7(&snic->snic_lock, flags);
	FUNC3(&snic->fwinfo, 0, sizeof(snic->fwinfo));
	snic->fwinfo.wait = &wait;
	FUNC8(&snic->snic_lock, flags);

	/* Additional delay to handle HW Resource initialization. */
	FUNC5(50);

	/*
	 * Exch ver req can be ignored by FW, if HW Resource initialization
	 * is in progress, Hence retry.
	 */
	do {
		ret = FUNC6(snic);
		if (ret)
			return ret;

		FUNC9(&wait, FUNC4(2000));
		FUNC7(&snic->snic_lock, flags);
		ret = (snic->fwinfo.fw_ver != 0) ? 0 : -ETIMEDOUT;
		if (ret)
			FUNC1(snic->shost,
				      "Failed to retrieve snic params,\n");

		/* Unset fwinfo.wait, on success or on last retry */
		if (ret == 0 || nr_retries == 1)
			snic->fwinfo.wait = NULL;

		FUNC8(&snic->snic_lock, flags);
	} while (ret && --nr_retries);

	return ret;
}