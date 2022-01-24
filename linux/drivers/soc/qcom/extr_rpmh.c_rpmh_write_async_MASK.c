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
typedef  int /*<<< orphan*/  u32 ;
struct tcs_cmd {int dummy; } ;
struct rpmh_request {int needs_free; } ;
struct device {int dummy; } ;
typedef  enum rpmh_state { ____Placeholder_rpmh_state } rpmh_state ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (struct rpmh_request*,int,struct tcs_cmd const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device const*,int,struct rpmh_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpmh_request*) ; 
 struct rpmh_request* FUNC3 (int,int /*<<< orphan*/ ) ; 

int FUNC4(const struct device *dev, enum rpmh_state state,
		     const struct tcs_cmd *cmd, u32 n)
{
	struct rpmh_request *rpm_msg;
	int ret;

	rpm_msg = FUNC3(sizeof(*rpm_msg), GFP_ATOMIC);
	if (!rpm_msg)
		return -ENOMEM;
	rpm_msg->needs_free = true;

	ret = FUNC0(rpm_msg, state, cmd, n);
	if (ret) {
		FUNC2(rpm_msg);
		return ret;
	}

	return FUNC1(dev, state, rpm_msg);
}