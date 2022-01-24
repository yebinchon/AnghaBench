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
struct TYPE_4__ {int config_size; } ;
struct TYPE_3__ {int end; scalar_t__ start; int /*<<< orphan*/  name; } ;
struct nvdimm_drvdata {int ns_current; int ns_next; TYPE_2__ nsarea; int /*<<< orphan*/  kref; struct device* dev; TYPE_1__ dpa; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int ENOMEM ; 
 int ENOTTY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct nvdimm_drvdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct nvdimm_drvdata* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nvdimm_drvdata*) ; 
 int FUNC8 (struct nvdimm_drvdata*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int FUNC13 (struct nvdimm_drvdata*) ; 
 int FUNC14 (struct device*) ; 
 int FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (struct nvdimm_drvdata*) ; 

__attribute__((used)) static int FUNC19(struct device *dev)
{
	struct nvdimm_drvdata *ndd;
	int rc;

	rc = FUNC14(dev);
	if (rc < 0) {
		FUNC1(dev, "security event setup failed: %d\n", rc);
		return rc;
	}

	rc = FUNC11(dev);
	if (rc) {
		/* not required for non-aliased nvdimm, ex. NVDIMM-N */
		if (rc == -ENOTTY)
			rc = 0;
		return rc;
	}

	/*
	 * The locked status bit reflects explicit status codes from the
	 * label reading commands, revalidate it each time the driver is
	 * activated and re-reads the label area.
	 */
	FUNC12(dev);

	ndd = FUNC6(sizeof(*ndd), GFP_KERNEL);
	if (!ndd)
		return -ENOMEM;

	FUNC3(dev, ndd);
	ndd->dpa.name = FUNC2(dev);
	ndd->ns_current = -1;
	ndd->ns_next = -1;
	ndd->dpa.start = 0;
	ndd->dpa.end = -1;
	ndd->dev = dev;
	FUNC4(dev);
	FUNC5(&ndd->kref);

	/*
	 * Attempt to unlock, if the DIMM supports security commands,
	 * otherwise the locked indication is determined by explicit
	 * status codes from the label reading commands.
	 */
	rc = FUNC15(dev);
	if (rc < 0)
		FUNC0(dev, "failed to unlock dimm: %d\n", rc);


	/*
	 * EACCES failures reading the namespace label-area-properties
	 * are interpreted as the DIMM capacity being locked but the
	 * namespace labels themselves being accessible.
	 */
	rc = FUNC13(ndd);
	if (rc == -EACCES) {
		/*
		 * See nvdimm_namespace_common_probe() where we fail to
		 * allow namespaces to probe while the DIMM is locked,
		 * but we do allow for namespace enumeration.
		 */
		FUNC17(dev);
		rc = 0;
	}
	if (rc)
		goto err;

	/*
	 * EACCES failures reading the namespace label-data are
	 * interpreted as the label area being locked in addition to the
	 * DIMM capacity. We fail the dimm probe to prevent regions from
	 * attempting to parse the label area.
	 */
	rc = FUNC7(ndd);
	if (rc == -EACCES)
		FUNC17(dev);
	if (rc)
		goto err;

	FUNC0(dev, "config data size: %d\n", ndd->nsarea.config_size);

	FUNC9(dev);
	if (ndd->ns_current >= 0) {
		rc = FUNC8(ndd);
		if (rc == 0)
			FUNC16(dev);
	}
	FUNC10(dev);

	if (rc)
		goto err;

	return 0;

 err:
	FUNC18(ndd);
	return rc;
}