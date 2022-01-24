#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  temp_rdc_data ;
struct dasd_uid {int dummy; } ;
struct dasd_eckd_private {int /*<<< orphan*/  rdc_data; int /*<<< orphan*/  uid; } ;
struct dasd_eckd_characteristics {int dummy; } ;
struct dasd_device {TYPE_1__* cdev; struct dasd_eckd_private* private; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_CQR_FLAGS_FAILFAST ; 
 int /*<<< orphan*/  DASD_ECKD_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 
 int FUNC3 (struct dasd_device*) ; 
 int FUNC4 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct dasd_device*,struct dasd_uid*) ; 
 int FUNC6 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct dasd_device*,unsigned long) ; 
 int FUNC11 (struct dasd_device*,int /*<<< orphan*/ ,struct dasd_eckd_characteristics*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,struct dasd_uid*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct dasd_eckd_characteristics*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC19(struct dasd_device *device)
{
	struct dasd_eckd_private *private = device->private;
	struct dasd_eckd_characteristics temp_rdc_data;
	int rc;
	struct dasd_uid temp_uid;
	unsigned long flags;
	unsigned long cqr_flags = 0;

	/* Read Configuration Data */
	rc = FUNC6(device);
	if (rc) {
		FUNC0(DBF_WARNING, device->cdev,
				"Read configuration data failed, rc=%d", rc);
		goto out_err;
	}

	FUNC5(device, &temp_uid);
	/* Generate device unique id */
	rc = FUNC4(device);
	FUNC17(FUNC13(device->cdev), flags);
	if (FUNC14(&private->uid, &temp_uid, sizeof(struct dasd_uid)) != 0)
		FUNC12(&device->cdev->dev, "The UID of the DASD has "
			"changed\n");
	FUNC18(FUNC13(device->cdev), flags);
	if (rc)
		goto out_err;

	/* register lcu with alias handling, enable PAV if this is a new lcu */
	rc = FUNC3(device);
	if (rc)
		goto out_err;

	FUNC16(DASD_CQR_FLAGS_FAILFAST, &cqr_flags);
	FUNC10(device, cqr_flags);

	/* RE-Read Configuration Data */
	rc = FUNC6(device);
	if (rc) {
		FUNC0(DBF_WARNING, device->cdev,
			"Read configuration data failed, rc=%d", rc);
		goto out_err2;
	}

	/* Read Feature Codes */
	FUNC8(device);

	/* Read Volume Information */
	FUNC9(device);

	/* Read Extent Pool Information */
	FUNC7(device);

	/* Read Device Characteristics */
	rc = FUNC11(device, DASD_ECKD_MAGIC,
					 &temp_rdc_data, 64);
	if (rc) {
		FUNC0(DBF_WARNING, device->cdev,
				"Read device characteristic failed, rc=%d", rc);
		goto out_err2;
	}
	FUNC17(FUNC13(device->cdev), flags);
	FUNC15(&private->rdc_data, &temp_rdc_data, sizeof(temp_rdc_data));
	FUNC18(FUNC13(device->cdev), flags);

	/* add device to alias management */
	FUNC1(device);

	return 0;

out_err2:
	FUNC2(device);
out_err:
	return -1;
}