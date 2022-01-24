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
struct resource {int dummy; } ;
struct nvdimm_drvdata {int /*<<< orphan*/  dpa; int /*<<< orphan*/  dev; } ;
struct nd_label_id {int dummy; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct resource* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (struct nd_label_id*,int,int /*<<< orphan*/ ) ; 

struct resource *FUNC5(struct nvdimm_drvdata *ndd,
		struct nd_label_id *label_id, resource_size_t start,
		resource_size_t n)
{
	char *name = FUNC4(label_id, sizeof(*label_id), GFP_KERNEL);
	struct resource *res;

	if (!name)
		return NULL;

	FUNC0(!FUNC2(ndd->dev));
	res = FUNC1(&ndd->dpa, start, n, name, 0);
	if (!res)
		FUNC3(name);
	return res;
}