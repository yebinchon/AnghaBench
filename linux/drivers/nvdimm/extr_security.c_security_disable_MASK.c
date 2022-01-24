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
struct TYPE_4__ {scalar_t__ flags; TYPE_1__* ops; } ;
struct device {int dummy; } ;
struct nvdimm {TYPE_2__ sec; struct device dev; } ;
struct key {int dummy; } ;
struct TYPE_3__ {int (* disable ) (struct nvdimm*,void const*) ;} ;

/* Variables and functions */
 int ENOKEY ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  NVDIMM_BASE_KEY ; 
 int /*<<< orphan*/  NVDIMM_USER ; 
 int FUNC0 (struct nvdimm*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct key*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (struct nvdimm*,unsigned int,int /*<<< orphan*/ ,struct key**) ; 
 int /*<<< orphan*/  FUNC5 (struct key*) ; 
 scalar_t__ FUNC6 (struct nvdimm*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nvdimm*,void const*) ; 
 struct nvdimm_bus* FUNC8 (struct device*) ; 

__attribute__((used)) static int FUNC9(struct nvdimm *nvdimm, unsigned int keyid)
{
	struct device *dev = &nvdimm->dev;
	struct nvdimm_bus *nvdimm_bus = FUNC8(dev);
	struct key *key;
	int rc;
	const void *data;

	/* The bus lock should be held at the top level of the call stack */
	FUNC3(&nvdimm_bus->reconfig_mutex);

	if (!nvdimm->sec.ops || !nvdimm->sec.ops->disable
			|| !nvdimm->sec.flags)
		return -EOPNOTSUPP;

	rc = FUNC0(nvdimm);
	if (rc)
		return rc;

	data = FUNC4(nvdimm, keyid,
			NVDIMM_BASE_KEY, &key);
	if (!data)
		return -ENOKEY;

	rc = nvdimm->sec.ops->disable(nvdimm, data);
	FUNC1(dev, "key: %d disable: %s\n", FUNC2(key),
			rc == 0 ? "success" : "fail");

	FUNC5(key);
	nvdimm->sec.flags = FUNC6(nvdimm, NVDIMM_USER);
	return rc;
}