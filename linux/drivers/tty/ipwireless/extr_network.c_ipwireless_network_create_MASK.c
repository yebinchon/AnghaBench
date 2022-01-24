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
struct ipw_network {int /*<<< orphan*/  work_go_offline; int /*<<< orphan*/  work_go_online; struct ipw_hardware* hardware; int /*<<< orphan*/  close_lock; int /*<<< orphan*/  lock; } ;
struct ipw_hardware {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_go_offline ; 
 int /*<<< orphan*/  do_go_online ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_hardware*,struct ipw_network*) ; 
 struct ipw_network* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct ipw_network *FUNC5(struct ipw_hardware *hw)
{
	struct ipw_network *network =
		FUNC2(sizeof(struct ipw_network), GFP_KERNEL);

	if (!network)
		return NULL;

	FUNC4(&network->lock);
	FUNC3(&network->close_lock);

	network->hardware = hw;

	FUNC0(&network->work_go_online, do_go_online);
	FUNC0(&network->work_go_offline, do_go_offline);

	FUNC1(hw, network);

	return network;
}