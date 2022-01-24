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
struct nvmet_subsys {int dummy; } ;
struct config_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvmet_subsys*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_subsys*) ; 
 struct nvmet_subsys* FUNC2 (struct config_item*) ; 

__attribute__((used)) static void FUNC3(struct config_item *item)
{
	struct nvmet_subsys *subsys = FUNC2(item);

	FUNC0(subsys);
	FUNC1(subsys);
}