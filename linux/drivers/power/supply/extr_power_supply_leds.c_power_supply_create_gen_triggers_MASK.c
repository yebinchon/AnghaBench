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
struct power_supply {int /*<<< orphan*/  online_trig; int /*<<< orphan*/  online_trig_name; TYPE_1__* desc; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct power_supply *psy)
{
	psy->online_trig_name = FUNC0(GFP_KERNEL, "%s-online",
					  psy->desc->name);
	if (!psy->online_trig_name)
		return -ENOMEM;

	FUNC1(psy->online_trig_name, &psy->online_trig);

	return 0;
}