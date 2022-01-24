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
struct srp_rport {int state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  enum srp_rport_state { ____Placeholder_srp_rport_state } srp_rport_state ;

/* Variables and functions */
 unsigned int FUNC0 (char const* const*) ; 
#define  SRP_RPORT_BLOCKED 131 
#define  SRP_RPORT_FAIL_FAST 130 
#define  SRP_RPORT_LOST 129 
#define  SRP_RPORT_RUNNING 128 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const* const) ; 
 struct srp_rport* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				    struct device_attribute *attr,
				    char *buf)
{
	static const char *const state_name[] = {
		[SRP_RPORT_RUNNING]	= "running",
		[SRP_RPORT_BLOCKED]	= "blocked",
		[SRP_RPORT_FAIL_FAST]	= "fail-fast",
		[SRP_RPORT_LOST]	= "lost",
	};
	struct srp_rport *rport = FUNC2(dev);
	enum srp_rport_state state = rport->state;

	return FUNC1(buf, "%s\n",
		       (unsigned)state < FUNC0(state_name) ?
		       state_name[state] : "???");
}