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
struct iscsi_r2t {int /*<<< orphan*/  r2t_list; } ;
struct iscsi_cmd {int /*<<< orphan*/  r2t_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct iscsi_r2t*) ; 
 int /*<<< orphan*/  lio_r2t_cache ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct iscsi_r2t *r2t, struct iscsi_cmd *cmd)
{
	FUNC2(&cmd->r2t_lock);

	FUNC1(&r2t->r2t_list);
	FUNC0(lio_r2t_cache, r2t);
}