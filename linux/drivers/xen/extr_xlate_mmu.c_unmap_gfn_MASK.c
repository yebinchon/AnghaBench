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
struct xen_remove_from_physmap {unsigned long gpfn; int /*<<< orphan*/  domid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMID_SELF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct xen_remove_from_physmap*) ; 
 int /*<<< orphan*/  XENMEM_remove_from_physmap ; 

__attribute__((used)) static void FUNC1(unsigned long gfn, void *data)
{
	struct xen_remove_from_physmap xrp;

	xrp.domid = DOMID_SELF;
	xrp.gpfn = gfn;
	(void)FUNC0(XENMEM_remove_from_physmap, &xrp);
}