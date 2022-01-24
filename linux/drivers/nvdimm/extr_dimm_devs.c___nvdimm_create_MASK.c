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
struct resource {int dummy; } ;
struct nvdimm_security_ops {int dummy; } ;
struct nvdimm_bus {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {void* ext_flags; void* flags; scalar_t__ overwrite_tmo; struct nvdimm_security_ops const* ops; } ;
struct device {struct attribute_group const** groups; int /*<<< orphan*/  devt; int /*<<< orphan*/ * type; int /*<<< orphan*/ * parent; } ;
struct nvdimm {scalar_t__ id; char const* dimm_id; unsigned long flags; unsigned long cmd_mask; int num_flush; TYPE_1__ sec; int /*<<< orphan*/  dwork; struct device dev; int /*<<< orphan*/  busy; struct resource* flush_wpq; void* provider_data; } ;
struct attribute_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int NDD_NOBLK ; 
 int /*<<< orphan*/  NVDIMM_MASTER ; 
 int /*<<< orphan*/  NVDIMM_USER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  dimm_ida ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nvdimm*) ; 
 struct nvdimm* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 scalar_t__ noblk ; 
 int /*<<< orphan*/  nvdimm_device_type ; 
 int /*<<< orphan*/  nvdimm_major ; 
 void* FUNC8 (struct nvdimm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvdimm_security_overwrite_query ; 

struct nvdimm *FUNC9(struct nvdimm_bus *nvdimm_bus,
		void *provider_data, const struct attribute_group **groups,
		unsigned long flags, unsigned long cmd_mask, int num_flush,
		struct resource *flush_wpq, const char *dimm_id,
		const struct nvdimm_security_ops *sec_ops)
{
	struct nvdimm *nvdimm = FUNC6(sizeof(*nvdimm), GFP_KERNEL);
	struct device *dev;

	if (!nvdimm)
		return NULL;

	nvdimm->id = FUNC4(&dimm_ida, 0, 0, GFP_KERNEL);
	if (nvdimm->id < 0) {
		FUNC5(nvdimm);
		return NULL;
	}

	nvdimm->dimm_id = dimm_id;
	nvdimm->provider_data = provider_data;
	if (noblk)
		flags |= 1 << NDD_NOBLK;
	nvdimm->flags = flags;
	nvdimm->cmd_mask = cmd_mask;
	nvdimm->num_flush = num_flush;
	nvdimm->flush_wpq = flush_wpq;
	FUNC2(&nvdimm->busy, 0);
	dev = &nvdimm->dev;
	FUNC3(dev, "nmem%d", nvdimm->id);
	dev->parent = &nvdimm_bus->dev;
	dev->type = &nvdimm_device_type;
	dev->devt = FUNC1(nvdimm_major, nvdimm->id);
	dev->groups = groups;
	nvdimm->sec.ops = sec_ops;
	nvdimm->sec.overwrite_tmo = 0;
	FUNC0(&nvdimm->dwork, nvdimm_security_overwrite_query);
	/*
	 * Security state must be initialized before device_add() for
	 * attribute visibility.
	 */
	/* get security state and extended (master) state */
	nvdimm->sec.flags = FUNC8(nvdimm, NVDIMM_USER);
	nvdimm->sec.ext_flags = FUNC8(nvdimm, NVDIMM_MASTER);
	FUNC7(dev);

	return nvdimm;
}