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
struct nvdimm_drvdata {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct nvdimm_drvdata* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvdimm_drvdata*) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct nvdimm_drvdata *ndd = FUNC0(dev);

	if (!ndd)
		return 0;

	FUNC2(dev);
	FUNC1(dev, NULL);
	FUNC3(dev);
	FUNC4(ndd);

	return 0;
}