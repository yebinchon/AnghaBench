#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int blk_bdsa; int blk_size; } ;
struct dasd_fba_private {TYPE_2__ rdc_data; } ;
struct dasd_device {struct ccw_device* cdev; int /*<<< orphan*/  flags; int /*<<< orphan*/  default_retries; int /*<<< orphan*/  default_expires; struct dasd_fba_private* private; struct dasd_block* block; } ;
struct dasd_block {struct dasd_device* base; } ;
struct TYPE_3__ {int /*<<< orphan*/  cu_model; int /*<<< orphan*/  cu_type; int /*<<< orphan*/  dev_model; int /*<<< orphan*/  dev_type; } ;
struct ccw_device {TYPE_1__ id; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_EXPIRES ; 
 int /*<<< orphan*/  DASD_FBA_MAGIC ; 
 int /*<<< orphan*/  DASD_FEATURE_DISCARD ; 
 int /*<<< orphan*/  DASD_FLAG_DEVICE_RO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ccw_device*,char*,...) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FBA_DEFAULT_RETRIES ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct dasd_block*) ; 
 int /*<<< orphan*/  LPM_ANYPATH ; 
 int FUNC2 (struct dasd_block*) ; 
 struct dasd_block* FUNC3 () ; 
 int FUNC4 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct dasd_block*) ; 
 int FUNC6 (struct dasd_device*,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dasd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ccw_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct dasd_fba_private*) ; 
 struct dasd_fba_private* FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct dasd_fba_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(struct dasd_device *device)
{
	struct dasd_fba_private *private = device->private;
	struct ccw_device *cdev = device->cdev;
	struct dasd_block *block;
	int readonly, rc;

	if (!private) {
		private = FUNC12(sizeof(*private), GFP_KERNEL | GFP_DMA);
		if (!private) {
			FUNC10(&device->cdev->dev,
				 "Allocating memory for private DASD "
				 "data failed\n");
			return -ENOMEM;
		}
		device->private = private;
	} else {
		FUNC13(private, 0, sizeof(*private));
	}
	block = FUNC3();
	if (FUNC1(block)) {
		FUNC0(DBF_WARNING, cdev, "%s", "could not allocate "
				"dasd block structure");
		device->private = NULL;
		FUNC11(private);
		return FUNC2(block);
	}
	device->block = block;
	block->base = device;

	/* Read Device Characteristics */
	rc = FUNC6(device, DASD_FBA_MAGIC,
					 &private->rdc_data, 32);
	if (rc) {
		FUNC0(DBF_WARNING, cdev, "Read device "
				"characteristics returned error %d", rc);
		device->block = NULL;
		FUNC5(block);
		device->private = NULL;
		FUNC11(private);
		return rc;
	}

	device->default_expires = DASD_EXPIRES;
	device->default_retries = FBA_DEFAULT_RETRIES;
	FUNC7(device, LPM_ANYPATH);

	readonly = FUNC4(device);
	if (readonly)
		FUNC14(DASD_FLAG_DEVICE_RO, &device->flags);

	/* FBA supports discard, set the according feature bit */
	FUNC8(cdev, DASD_FEATURE_DISCARD, 1);

	FUNC9(&device->cdev->dev,
		 "New FBA DASD %04X/%02X (CU %04X/%02X) with %d MB "
		 "and %d B/blk%s\n",
		 cdev->id.dev_type,
		 cdev->id.dev_model,
		 cdev->id.cu_type,
		 cdev->id.cu_model,
		 ((private->rdc_data.blk_bdsa *
		   (private->rdc_data.blk_size >> 9)) >> 11),
		 private->rdc_data.blk_size,
		 readonly ? ", read-only device" : "");
	return 0;
}