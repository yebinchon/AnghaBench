#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* name; struct module* owner; int /*<<< orphan*/ * bus; } ;
struct ntb_client {TYPE_1__ drv; int /*<<< orphan*/  ops; } ;
struct module {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ntb_bus ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct ntb_client *client, struct module *mod,
			  const char *mod_name)
{
	if (!client)
		return -EINVAL;
	if (!FUNC2(&client->ops))
		return -EINVAL;

	FUNC1(&client->drv, 0, sizeof(client->drv));
	client->drv.bus = &ntb_bus;
	client->drv.name = mod_name;
	client->drv.owner = mod;

	return FUNC0(&client->drv);
}