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
struct mvumi_res {int type; unsigned int size; int /*<<< orphan*/  entry; void* virt_addr; int /*<<< orphan*/  bus_addr; } ;
struct mvumi_hba {int /*<<< orphan*/  res_list; TYPE_1__* pdev; } ;
typedef  enum resource_type { ____Placeholder_resource_type } resource_type ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  RESOURCE_CACHED_MEMORY 129 
#define  RESOURCE_UNCACHED_MEMORY 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC2 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mvumi_res*) ; 
 void* FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (unsigned int,int) ; 

__attribute__((used)) static struct mvumi_res *FUNC7(struct mvumi_hba *mhba,
				enum resource_type type, unsigned int size)
{
	struct mvumi_res *res = FUNC4(sizeof(*res), GFP_ATOMIC);

	if (!res) {
		FUNC1(&mhba->pdev->dev,
			"Failed to allocate memory for resource manager.\n");
		return NULL;
	}

	switch (type) {
	case RESOURCE_CACHED_MEMORY:
		res->virt_addr = FUNC4(size, GFP_ATOMIC);
		if (!res->virt_addr) {
			FUNC1(&mhba->pdev->dev,
				"unable to allocate memory,size = %d.\n", size);
			FUNC3(res);
			return NULL;
		}
		break;

	case RESOURCE_UNCACHED_MEMORY:
		size = FUNC6(size, 8);
		res->virt_addr = FUNC2(&mhba->pdev->dev, size,
						    &res->bus_addr,
						    GFP_KERNEL);
		if (!res->virt_addr) {
			FUNC1(&mhba->pdev->dev,
					"unable to allocate consistent mem,"
							"size = %d.\n", size);
			FUNC3(res);
			return NULL;
		}
		break;

	default:
		FUNC1(&mhba->pdev->dev, "unknown resource type %d.\n", type);
		FUNC3(res);
		return NULL;
	}

	res->type = type;
	res->size = size;
	FUNC0(&res->entry);
	FUNC5(&res->entry, &mhba->res_list);

	return res;
}