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
struct ishtp_cl_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wait_queue; } ;
struct ishtp_cl_data {int /*<<< orphan*/  work_ec_evt; int /*<<< orphan*/  work_ishtp_reset; TYPE_1__ response; struct ishtp_cl_device* cl_device; struct ishtp_cl* cros_ish_cl; } ;
struct ishtp_cl {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISHTP_CL_DISCONNECTING ; 
 int FUNC1 (struct ishtp_cl_data*) ; 
 int FUNC2 (struct ishtp_cl*) ; 
 struct ishtp_cl_data* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ish_evt_handler ; 
 struct ishtp_cl* FUNC6 (struct ishtp_cl_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC8 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC9 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC10 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC11 (struct ishtp_cl_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct ishtp_cl_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct ishtp_cl_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct ishtp_cl*,struct ishtp_cl_data*) ; 
 int /*<<< orphan*/  FUNC15 (struct ishtp_cl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ishtp_cl_device*,struct ishtp_cl*) ; 
 int /*<<< orphan*/  reset_handler ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct ishtp_cl_device *cl_device)
{
	int rv;
	struct ishtp_cl *cros_ish_cl;
	struct ishtp_cl_data *client_data =
		FUNC3(FUNC11(cl_device),
			     sizeof(*client_data), GFP_KERNEL);
	if (!client_data)
		return -ENOMEM;

	/* Lock for initialization to complete */
	FUNC4(&init_lock);

	cros_ish_cl = FUNC6(cl_device);
	if (!cros_ish_cl) {
		rv = -ENOMEM;
		goto end_ishtp_cl_alloc_error;
	}

	FUNC16(cl_device, cros_ish_cl);
	FUNC14(cros_ish_cl, client_data);
	client_data->cros_ish_cl = cros_ish_cl;
	client_data->cl_device = cl_device;

	FUNC5(&client_data->response.wait_queue);

	FUNC0(&client_data->work_ishtp_reset,
		  reset_handler);
	FUNC0(&client_data->work_ec_evt,
		  ish_evt_handler);

	rv = FUNC2(cros_ish_cl);
	if (rv)
		goto end_ishtp_cl_init_error;

	FUNC12(cl_device);

	FUNC17(&init_lock);

	/* Register croc_ec_dev mfd */
	rv = FUNC1(client_data);
	if (rv)
		goto end_cros_ec_dev_init_error;

	return 0;

end_cros_ec_dev_init_error:
	FUNC15(cros_ish_cl, ISHTP_CL_DISCONNECTING);
	FUNC7(cros_ish_cl);
	FUNC10(cros_ish_cl);
	FUNC8(cros_ish_cl);
	FUNC13(cl_device);
end_ishtp_cl_init_error:
	FUNC9(cros_ish_cl);
end_ishtp_cl_alloc_error:
	FUNC17(&init_lock);
	return rv;
}