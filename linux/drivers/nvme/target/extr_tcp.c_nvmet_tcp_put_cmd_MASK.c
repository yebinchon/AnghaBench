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
struct nvmet_tcp_cmd {TYPE_1__* queue; int /*<<< orphan*/  entry; } ;
struct TYPE_2__ {int /*<<< orphan*/  free_list; struct nvmet_tcp_cmd connect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(struct nvmet_tcp_cmd *cmd)
{
	if (FUNC1(cmd == &cmd->queue->connect))
		return;

	FUNC0(&cmd->entry, &cmd->queue->free_list);
}