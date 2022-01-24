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
struct scsi_device {struct hp_sw_dh_data* handler_data; } ;
struct hp_sw_dh_data {scalar_t__ path_state; struct scsi_device* sdev; int /*<<< orphan*/  retries; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HP_SW_NAME ; 
 scalar_t__ HP_SW_PATH_ACTIVE ; 
 scalar_t__ HP_SW_PATH_UNINITIALIZED ; 
 int /*<<< orphan*/  HP_SW_RETRIES ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int SCSI_DH_NOMEM ; 
 int SCSI_DH_NOSYS ; 
 int SCSI_DH_OK ; 
 int FUNC0 (struct scsi_device*,struct hp_sw_dh_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct hp_sw_dh_data*) ; 
 struct hp_sw_dh_data* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_device*,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct scsi_device *sdev)
{
	struct hp_sw_dh_data *h;
	int ret;

	h = FUNC2(sizeof(*h), GFP_KERNEL);
	if (!h)
		return SCSI_DH_NOMEM;
	h->path_state = HP_SW_PATH_UNINITIALIZED;
	h->retries = HP_SW_RETRIES;
	h->sdev = sdev;

	ret = FUNC0(sdev, h);
	if (ret != SCSI_DH_OK)
		goto failed;
	if (h->path_state == HP_SW_PATH_UNINITIALIZED) {
		ret = SCSI_DH_NOSYS;
		goto failed;
	}

	FUNC3(KERN_INFO, sdev, "%s: attached to %s path\n",
		    HP_SW_NAME, h->path_state == HP_SW_PATH_ACTIVE?
		    "active":"passive");

	sdev->handler_data = h;
	return SCSI_DH_OK;
failed:
	FUNC1(h);
	return ret;
}