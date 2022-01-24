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
struct ucsi_control {int dummy; } ;
struct ucsi {int /*<<< orphan*/  ppm_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ucsi*,struct ucsi_control*,void*,size_t) ; 

int FUNC3(struct ucsi *ucsi, struct ucsi_control *ctrl,
		      void *retval, size_t size)
{
	int ret;

	FUNC0(&ucsi->ppm_lock);
	ret = FUNC2(ucsi, ctrl, retval, size);
	FUNC1(&ucsi->ppm_lock);

	return ret;
}