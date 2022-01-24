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
typedef  int u32 ;
struct nvdimm_drvdata {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int,char*) ; 
 struct nvdimm_drvdata* FUNC1 (struct device*) ; 
 int FUNC2 (struct nvdimm_drvdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct nvdimm_drvdata *ndd = FUNC1(dev);
	ssize_t rc;
	u32 nfree;

	if (!ndd)
		return -ENXIO;

	FUNC3(dev);
	nfree = FUNC2(ndd);
	if (nfree - 1 > nfree) {
		FUNC0(dev, 1, "we ate our last label?\n");
		nfree = 0;
	} else
		nfree--;
	rc = FUNC5(buf, "%d\n", nfree);
	FUNC4(dev);
	return rc;
}