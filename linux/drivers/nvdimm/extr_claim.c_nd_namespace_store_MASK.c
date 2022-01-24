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
struct nd_namespace_common {int claim_class; int /*<<< orphan*/  dev; } ;
struct device {int /*<<< orphan*/ * parent; scalar_t__ driver; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EBUSY ; 
 size_t EINVAL ; 
 size_t ENODEV ; 
 size_t ENOMEM ; 
 size_t ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  NVDIMM_CCLASS_BTT 132 
#define  NVDIMM_CCLASS_BTT2 131 
#define  NVDIMM_CCLASS_DAX 130 
#define  NVDIMM_CCLASS_NONE 129 
#define  NVDIMM_CCLASS_PFN 128 
 scalar_t__ SZ_16M ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct nd_namespace_common*,struct nd_namespace_common**) ; 
 scalar_t__ FUNC2 (struct nd_namespace_common*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 struct device* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  namespace_match ; 
 int /*<<< orphan*/  FUNC12 (struct device*,struct nd_namespace_common**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 scalar_t__ FUNC16 (char*,char*,int) ; 
 struct nd_namespace_common* FUNC17 (struct device*) ; 

ssize_t FUNC18(struct device *dev,
		struct nd_namespace_common **_ndns, const char *buf,
		size_t len)
{
	struct nd_namespace_common *ndns;
	struct device *found;
	char *name;

	if (dev->driver) {
		FUNC3(dev, "namespace already active\n");
		return -EBUSY;
	}

	name = FUNC11(buf, len, GFP_KERNEL);
	if (!name)
		return -ENOMEM;
	FUNC15(name);

	if (FUNC16(name, "namespace", 9) == 0 || FUNC14(name, "") == 0)
		/* pass */;
	else {
		len = -EINVAL;
		goto out;
	}

	ndns = *_ndns;
	if (FUNC14(name, "") == 0) {
		FUNC12(dev, _ndns);
		goto out;
	} else if (ndns) {
		FUNC3(dev, "namespace already set to: %s\n",
				FUNC4(&ndns->dev));
		len = -EBUSY;
		goto out;
	}

	found = FUNC5(dev->parent, name, namespace_match);
	if (!found) {
		FUNC3(dev, "'%s' not found under %s\n", name,
				FUNC4(dev->parent));
		len = -ENODEV;
		goto out;
	}

	ndns = FUNC17(found);

	switch (ndns->claim_class) {
	case NVDIMM_CCLASS_NONE:
		break;
	case NVDIMM_CCLASS_BTT:
	case NVDIMM_CCLASS_BTT2:
		if (!FUNC6(dev)) {
			len = -EBUSY;
			goto out_attach;
		}
		break;
	case NVDIMM_CCLASS_PFN:
		if (!FUNC8(dev)) {
			len = -EBUSY;
			goto out_attach;
		}
		break;
	case NVDIMM_CCLASS_DAX:
		if (!FUNC7(dev)) {
			len = -EBUSY;
			goto out_attach;
		}
		break;
	default:
		len = -EBUSY;
		goto out_attach;
		break;
	}

	if (FUNC2(ndns) < SZ_16M) {
		FUNC3(dev, "%s too small to host\n", name);
		len = -ENXIO;
		goto out_attach;
	}

	FUNC0(!FUNC9(dev));
	if (!FUNC1(dev, ndns, _ndns)) {
		FUNC3(dev, "%s already claimed\n",
				FUNC4(&ndns->dev));
		len = -EBUSY;
	}

 out_attach:
	FUNC13(&ndns->dev); /* from device_find_child */
 out:
	FUNC10(name);
	return len;
}