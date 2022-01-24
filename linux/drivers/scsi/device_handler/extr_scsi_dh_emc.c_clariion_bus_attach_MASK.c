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
struct scsi_device {struct clariion_dh_data* handler_data; } ;
struct clariion_dh_data {size_t lun_state; void* default_sp; int /*<<< orphan*/  port; void* current_sp; } ;

/* Variables and functions */
 size_t CLARIION_LUN_UNINITIALIZED ; 
 int /*<<< orphan*/  CLARIION_NAME ; 
 void* CLARIION_UNBOUND_LU ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int SCSI_DH_NOMEM ; 
 int SCSI_DH_OK ; 
 int FUNC0 (struct scsi_device*,struct clariion_dh_data*) ; 
 int FUNC1 (struct scsi_device*,struct clariion_dh_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct clariion_dh_data*) ; 
 struct clariion_dh_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * lun_state ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_device*,char*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC5(struct scsi_device *sdev)
{
	struct clariion_dh_data *h;
	int err;

	h = FUNC3(sizeof(*h) , GFP_KERNEL);
	if (!h)
		return SCSI_DH_NOMEM;
	h->lun_state = CLARIION_LUN_UNINITIALIZED;
	h->default_sp = CLARIION_UNBOUND_LU;
	h->current_sp = CLARIION_UNBOUND_LU;

	err = FUNC1(sdev, h);
	if (err != SCSI_DH_OK)
		goto failed;

	err = FUNC0(sdev, h);
	if (err != SCSI_DH_OK)
		goto failed;

	FUNC4(KERN_INFO, sdev,
		    "%s: connected to SP %c Port %d (%s, default SP %c)\n",
		    CLARIION_NAME, h->current_sp + 'A',
		    h->port, lun_state[h->lun_state],
		    h->default_sp + 'A');

	sdev->handler_data = h;
	return SCSI_DH_OK;

failed:
	FUNC2(h);
	return err;
}