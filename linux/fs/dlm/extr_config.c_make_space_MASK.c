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
struct dlm_space {struct config_group group; scalar_t__ members_count; int /*<<< orphan*/  members_lock; int /*<<< orphan*/  members; struct config_group ns_group; } ;
struct dlm_nodes {struct config_group group; scalar_t__ members_count; int /*<<< orphan*/  members_lock; int /*<<< orphan*/  members; struct config_group ns_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct config_group* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct config_group*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct config_group*,struct config_group*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_space*) ; 
 struct dlm_space* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nodes_type ; 
 int /*<<< orphan*/  space_type ; 

__attribute__((used)) static struct config_group *FUNC7(struct config_group *g, const char *name)
{
	struct dlm_space *sp = NULL;
	struct dlm_nodes *nds = NULL;

	sp = FUNC5(sizeof(struct dlm_space), GFP_NOFS);
	nds = FUNC5(sizeof(struct dlm_nodes), GFP_NOFS);

	if (!sp || !nds)
		goto fail;

	FUNC2(&sp->group, name, &space_type);

	FUNC2(&nds->ns_group, "nodes", &nodes_type);
	FUNC3(&nds->ns_group, &sp->group);

	FUNC1(&sp->members);
	FUNC6(&sp->members_lock);
	sp->members_count = 0;
	return &sp->group;

 fail:
	FUNC4(sp);
	FUNC4(nds);
	return FUNC0(-ENOMEM);
}