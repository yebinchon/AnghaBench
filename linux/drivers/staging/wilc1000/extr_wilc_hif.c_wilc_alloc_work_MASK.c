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
struct wilc_vif {int dummy; } ;
struct host_if_msg {void (* fn ) (struct work_struct*) ;int is_sync; int /*<<< orphan*/  work_comp; struct wilc_vif* vif; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct host_if_msg* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct host_if_msg* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct host_if_msg*
FUNC3(struct wilc_vif *vif, void (*work_fun)(struct work_struct *),
		bool is_sync)
{
	struct host_if_msg *msg;

	if (!work_fun)
		return FUNC0(-EINVAL);

	msg = FUNC2(sizeof(*msg), GFP_ATOMIC);
	if (!msg)
		return FUNC0(-ENOMEM);
	msg->fn = work_fun;
	msg->vif = vif;
	msg->is_sync = is_sync;
	if (is_sync)
		FUNC1(&msg->work_comp);

	return msg;
}