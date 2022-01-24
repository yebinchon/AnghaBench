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
struct config_group {int dummy; } ;
struct nvmet_port {struct config_group group; int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct config_group* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct config_group*,char const*,int /*<<< orphan*/ *) ; 
 struct nvmet_port* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvmet_referral_type ; 

__attribute__((used)) static struct config_group *FUNC4(
		struct config_group *group, const char *name)
{
	struct nvmet_port *port;

	port = FUNC3(sizeof(*port), GFP_KERNEL);
	if (!port)
		return FUNC0(-ENOMEM);

	FUNC1(&port->entry);
	FUNC2(&port->group, name, &nvmet_referral_type);

	return &port->group;
}