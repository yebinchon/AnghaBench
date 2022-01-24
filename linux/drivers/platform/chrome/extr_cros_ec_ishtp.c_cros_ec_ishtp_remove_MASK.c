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
struct ishtp_cl_device {int dummy; } ;
struct ishtp_cl_data {int /*<<< orphan*/  work_ec_evt; int /*<<< orphan*/  work_ishtp_reset; } ;
struct ishtp_cl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ishtp_cl*) ; 
 struct ishtp_cl_data* FUNC2 (struct ishtp_cl*) ; 
 struct ishtp_cl* FUNC3 (struct ishtp_cl_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ishtp_cl_device*) ; 

__attribute__((used)) static int FUNC5(struct ishtp_cl_device *cl_device)
{
	struct ishtp_cl	*cros_ish_cl = FUNC3(cl_device);
	struct ishtp_cl_data *client_data = FUNC2(cros_ish_cl);

	FUNC0(&client_data->work_ishtp_reset);
	FUNC0(&client_data->work_ec_evt);
	FUNC1(cros_ish_cl);
	FUNC4(cl_device);

	return 0;
}