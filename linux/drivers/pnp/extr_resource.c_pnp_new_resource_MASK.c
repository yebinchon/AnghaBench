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
struct pnp_resource {int /*<<< orphan*/  list; } ;
struct pnp_dev {int /*<<< orphan*/  resources; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct pnp_resource* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct pnp_resource *FUNC2(struct pnp_dev *dev)
{
	struct pnp_resource *pnp_res;

	pnp_res = FUNC0(sizeof(struct pnp_resource), GFP_KERNEL);
	if (!pnp_res)
		return NULL;

	FUNC1(&pnp_res->list, &dev->resources);
	return pnp_res;
}