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
struct TYPE_4__ {void* flags; void* ext_flags; TYPE_1__* ops; } ;
struct device {int dummy; } ;
struct nvdimm {TYPE_2__ sec; struct device dev; } ;
struct key {int dummy; } ;
typedef  enum nvdimm_passphrase_type { ____Placeholder_nvdimm_passphrase_type } nvdimm_passphrase_type ;
struct TYPE_3__ {int (* change_key ) (struct nvdimm*,void const*,void const*,int) ;} ;

/* Variables and functions */
 int ENOKEY ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  NVDIMM_BASE_KEY ; 
 int NVDIMM_MASTER ; 
 int /*<<< orphan*/  NVDIMM_NEW_KEY ; 
 int NVDIMM_USER ; 
 int FUNC0 (struct nvdimm*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct key*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (struct nvdimm*,unsigned int,int /*<<< orphan*/ ,struct key**) ; 
 int /*<<< orphan*/  FUNC5 (struct key*) ; 
 void* FUNC6 (struct nvdimm*,int) ; 
 int FUNC7 (struct nvdimm*,void const*,void const*,int) ; 
 struct nvdimm_bus* FUNC8 (struct device*) ; 

__attribute__((used)) static int FUNC9(struct nvdimm *nvdimm, unsigned int keyid,
		unsigned int new_keyid,
		enum nvdimm_passphrase_type pass_type)
{
	struct device *dev = &nvdimm->dev;
	struct nvdimm_bus *nvdimm_bus = FUNC8(dev);
	struct key *key, *newkey;
	int rc;
	const void *data, *newdata;

	/* The bus lock should be held at the top level of the call stack */
	FUNC3(&nvdimm_bus->reconfig_mutex);

	if (!nvdimm->sec.ops || !nvdimm->sec.ops->change_key
			|| !nvdimm->sec.flags)
		return -EOPNOTSUPP;

	rc = FUNC0(nvdimm);
	if (rc)
		return rc;

	data = FUNC4(nvdimm, keyid,
			NVDIMM_BASE_KEY, &key);
	if (!data)
		return -ENOKEY;

	newdata = FUNC4(nvdimm, new_keyid,
			NVDIMM_NEW_KEY, &newkey);
	if (!newdata) {
		FUNC5(key);
		return -ENOKEY;
	}

	rc = nvdimm->sec.ops->change_key(nvdimm, data, newdata, pass_type);
	FUNC1(dev, "key: %d %d update%s: %s\n",
			FUNC2(key), FUNC2(newkey),
			pass_type == NVDIMM_MASTER ? "(master)" : "(user)",
			rc == 0 ? "success" : "fail");

	FUNC5(newkey);
	FUNC5(key);
	if (pass_type == NVDIMM_MASTER)
		nvdimm->sec.ext_flags = FUNC6(nvdimm,
				NVDIMM_MASTER);
	else
		nvdimm->sec.flags = FUNC6(nvdimm,
				NVDIMM_USER);
	return rc;
}