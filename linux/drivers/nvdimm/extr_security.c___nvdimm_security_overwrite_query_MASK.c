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
struct nvdimm_bus {int /*<<< orphan*/  reconfig_mutex; } ;
struct TYPE_4__ {unsigned int overwrite_tmo; void* flags; scalar_t__ overwrite_state; TYPE_1__* ops; } ;
struct nvdimm {TYPE_2__ sec; int /*<<< orphan*/  dev; int /*<<< orphan*/  flags; int /*<<< orphan*/  dwork; } ;
struct TYPE_3__ {int (* query_overwrite ) (struct nvdimm*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 unsigned int HZ ; 
 int /*<<< orphan*/  NDD_SECURITY_OVERWRITE ; 
 int /*<<< orphan*/  NDD_WORK_PENDING ; 
 int /*<<< orphan*/  NVDIMM_MASTER ; 
 int /*<<< orphan*/  NVDIMM_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 
 void* FUNC4 (struct nvdimm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC7 (struct nvdimm*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  system_wq ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nvdimm_bus* FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct nvdimm *nvdimm)
{
	struct nvdimm_bus *nvdimm_bus = FUNC10(&nvdimm->dev);
	int rc;
	unsigned int tmo;

	/* The bus lock should be held at the top level of the call stack */
	FUNC2(&nvdimm_bus->reconfig_mutex);

	/*
	 * Abort and release device if we no longer have the overwrite
	 * flag set. It means the work has been canceled.
	 */
	if (!FUNC9(NDD_WORK_PENDING, &nvdimm->flags))
		return;

	tmo = nvdimm->sec.overwrite_tmo;

	if (!nvdimm->sec.ops || !nvdimm->sec.ops->query_overwrite
			|| !nvdimm->sec.flags)
		return;

	rc = nvdimm->sec.ops->query_overwrite(nvdimm);
	if (rc == -EBUSY) {

		/* setup delayed work again */
		tmo += 10;
		FUNC6(system_wq, &nvdimm->dwork, tmo * HZ);
		nvdimm->sec.overwrite_tmo = FUNC3(15U * 60U, tmo);
		return;
	}

	if (rc < 0)
		FUNC1(&nvdimm->dev, "overwrite failed\n");
	else
		FUNC1(&nvdimm->dev, "overwrite completed\n");

	if (nvdimm->sec.overwrite_state)
		FUNC8(nvdimm->sec.overwrite_state);
	nvdimm->sec.overwrite_tmo = 0;
	FUNC0(NDD_SECURITY_OVERWRITE, &nvdimm->flags);
	FUNC0(NDD_WORK_PENDING, &nvdimm->flags);
	FUNC5(&nvdimm->dev);
	nvdimm->sec.flags = FUNC4(nvdimm, NVDIMM_USER);
	nvdimm->sec.flags = FUNC4(nvdimm, NVDIMM_MASTER);
}