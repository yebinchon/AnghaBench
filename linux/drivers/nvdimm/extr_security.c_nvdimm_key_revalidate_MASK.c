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
struct TYPE_4__ {int /*<<< orphan*/  flags; TYPE_1__* ops; } ;
struct nvdimm {TYPE_2__ sec; } ;
struct key {int dummy; } ;
struct TYPE_3__ {int (* change_key ) (struct nvdimm*,void const*,void const*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  NVDIMM_USER ; 
 void* FUNC0 (struct nvdimm*,struct key**) ; 
 int /*<<< orphan*/  FUNC1 (struct key*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvdimm*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nvdimm*,void const*,void const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nvdimm *nvdimm)
{
	struct key *key;
	int rc;
	const void *data;

	if (!nvdimm->sec.ops->change_key)
		return -EOPNOTSUPP;

	data = FUNC0(nvdimm, &key);

	/*
	 * Send the same key to the hardware as new and old key to
	 * verify that the key is good.
	 */
	rc = nvdimm->sec.ops->change_key(nvdimm, data, data, NVDIMM_USER);
	if (rc < 0) {
		FUNC1(key);
		return rc;
	}

	FUNC1(key);
	nvdimm->sec.flags = FUNC2(nvdimm, NVDIMM_USER);
	return 0;
}