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
struct slim_eaddr {int dummy; } ;
struct slim_device {int dummy; } ;
struct slim_controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct slim_device* FUNC0 (int /*<<< orphan*/ ) ; 
 struct slim_device* FUNC1 (struct slim_controller*,struct slim_eaddr*) ; 
 struct slim_device* FUNC2 (struct slim_controller*,struct slim_eaddr*,int /*<<< orphan*/ *) ; 

struct slim_device *FUNC3(struct slim_controller *ctrl,
				    struct slim_eaddr *e_addr)
{
	struct slim_device *sbdev;

	sbdev = FUNC1(ctrl, e_addr);
	if (!sbdev) {
		sbdev = FUNC2(ctrl, e_addr, NULL);
		if (!sbdev)
			return FUNC0(-ENOMEM);
	}

	return sbdev;
}