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
struct ishtp_fw_client {int dummy; } ;
struct ishtp_device {int dummy; } ;
struct ishtp_cl_data {int /*<<< orphan*/  cl_device; } ;
struct ishtp_cl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CROS_ISH_CL_RX_RING_SIZE ; 
 int /*<<< orphan*/  CROS_ISH_CL_TX_RING_SIZE ; 
 int ENOENT ; 
 int /*<<< orphan*/  ISHTP_CL_CONNECTING ; 
 int /*<<< orphan*/  FUNC0 (struct ishtp_cl_data*) ; 
 int /*<<< orphan*/  cros_ish_guid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ish_event_cb ; 
 int FUNC2 (struct ishtp_cl*) ; 
 int FUNC3 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC4 (struct ishtp_cl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ishtp_cl*) ; 
 struct ishtp_fw_client* FUNC6 (struct ishtp_device*,int /*<<< orphan*/ *) ; 
 struct ishtp_cl_data* FUNC7 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC8 (struct ishtp_fw_client*) ; 
 struct ishtp_device* FUNC9 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ishtp_cl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ishtp_cl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ishtp_cl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct ishtp_cl *cros_ish_cl)
{
	int rv;
	struct ishtp_device *dev;
	struct ishtp_fw_client *fw_client;
	struct ishtp_cl_data *client_data = FUNC7(cros_ish_cl);

	rv = FUNC3(cros_ish_cl);
	if (rv) {
		FUNC1(FUNC0(client_data),
			"ishtp_cl_link failed\n");
		return rv;
	}

	dev = FUNC9(cros_ish_cl);

	/* Connect to firmware client */
	FUNC13(cros_ish_cl, CROS_ISH_CL_TX_RING_SIZE);
	FUNC12(cros_ish_cl, CROS_ISH_CL_RX_RING_SIZE);

	fw_client = FUNC6(dev, &cros_ish_guid);
	if (!fw_client) {
		FUNC1(FUNC0(client_data),
			"ish client uuid not found\n");
		rv = -ENOENT;
		goto err_cl_unlink;
	}

	FUNC4(cros_ish_cl,
				  FUNC8(fw_client));
	FUNC11(cros_ish_cl, ISHTP_CL_CONNECTING);

	rv = FUNC2(cros_ish_cl);
	if (rv) {
		FUNC1(FUNC0(client_data),
			"client connect fail\n");
		goto err_cl_unlink;
	}

	FUNC10(client_data->cl_device, ish_event_cb);
	return 0;

err_cl_unlink:
	FUNC5(cros_ish_cl);
	return rv;
}