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
struct device_node {char* name; TYPE_1__* parent; struct device_node* sibling; int /*<<< orphan*/ * child; int /*<<< orphan*/  phandle; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {struct device_node* child; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PPC_PSERIES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OF_DETACHED ; 
 int /*<<< orphan*/  OF_OVERLAY ; 
 void* FUNC1 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct device_node *np)
{
	const __be32 *phandle;
	int sz;

	if (!FUNC3(np, OF_OVERLAY)) {
		np->name = FUNC1(np, "name", NULL);
		if (!np->name)
			np->name = "<NULL>";

		phandle = FUNC1(np, "phandle", &sz);
		if (!phandle)
			phandle = FUNC1(np, "linux,phandle", &sz);
		if (FUNC0(CONFIG_PPC_PSERIES) && !phandle)
			phandle = FUNC1(np, "ibm,phandle", &sz);
		if (phandle && (sz >= 4))
			np->phandle = FUNC2(phandle);
		else
			np->phandle = 0;
	}

	np->child = NULL;
	np->sibling = np->parent->child;
	np->parent->child = np;
	FUNC4(np, OF_DETACHED);
}