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
struct pci_epf_group {int /*<<< orphan*/  epf; int /*<<< orphan*/  index; } ;
struct config_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  functions_idr ; 
 int /*<<< orphan*/  functions_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_epf_group*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct pci_epf_group* FUNC5 (struct config_item*) ; 

__attribute__((used)) static void FUNC6(struct config_item *item)
{
	struct pci_epf_group *epf_group = FUNC5(item);

	FUNC2(&functions_mutex);
	FUNC0(&functions_idr, epf_group->index);
	FUNC3(&functions_mutex);
	FUNC4(epf_group->epf);
	FUNC1(epf_group);
}