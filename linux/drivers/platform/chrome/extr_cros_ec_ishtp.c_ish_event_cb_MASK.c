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
struct ishtp_cl_rb {int dummy; } ;
struct ishtp_cl_device {int dummy; } ;
struct ishtp_cl {int dummy; } ;

/* Variables and functions */
 struct ishtp_cl_rb* FUNC0 (struct ishtp_cl*) ; 
 struct ishtp_cl* FUNC1 (struct ishtp_cl_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ishtp_cl*,struct ishtp_cl_rb*) ; 

__attribute__((used)) static void FUNC3(struct ishtp_cl_device *cl_device)
{
	struct ishtp_cl_rb *rb_in_proc;
	struct ishtp_cl	*cros_ish_cl = FUNC1(cl_device);

	while ((rb_in_proc = FUNC0(cros_ish_cl)) != NULL) {
		/* Decide what to do with received data */
		FUNC2(cros_ish_cl, rb_in_proc);
	}
}