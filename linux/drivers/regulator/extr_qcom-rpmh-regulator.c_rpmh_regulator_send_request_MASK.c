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
struct tcs_cmd {int dummy; } ;
struct rpmh_vreg {int /*<<< orphan*/  dev; scalar_t__ always_wait_for_ack; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPMH_ACTIVE_ONLY_STATE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tcs_cmd*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tcs_cmd*,int) ; 

__attribute__((used)) static int FUNC2(struct rpmh_vreg *vreg,
			struct tcs_cmd *cmd, bool wait_for_ack)
{
	int ret;

	if (wait_for_ack || vreg->always_wait_for_ack)
		ret = FUNC0(vreg->dev, RPMH_ACTIVE_ONLY_STATE, cmd, 1);
	else
		ret = FUNC1(vreg->dev, RPMH_ACTIVE_ONLY_STATE, cmd,
					1);

	return ret;
}