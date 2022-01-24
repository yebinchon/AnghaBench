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
struct nvmet_host {struct config_group group; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct config_group* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct config_group*,char const*,int /*<<< orphan*/ *) ; 
 struct nvmet_host* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvmet_host_type ; 

__attribute__((used)) static struct config_group *FUNC3(struct config_group *group,
		const char *name)
{
	struct nvmet_host *host;

	host = FUNC2(sizeof(*host), GFP_KERNEL);
	if (!host)
		return FUNC0(-ENOMEM);

	FUNC1(&host->group, name, &nvmet_host_type);

	return &host->group;
}