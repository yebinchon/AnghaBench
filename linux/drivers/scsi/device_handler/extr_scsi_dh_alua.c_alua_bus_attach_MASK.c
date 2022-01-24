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
struct scsi_device {struct alua_dh_data* handler_data; } ;
struct alua_dh_data {int init_error; int /*<<< orphan*/  init_mutex; int /*<<< orphan*/  node; struct scsi_device* sdev; int /*<<< orphan*/  pg; int /*<<< orphan*/  pg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SCSI_DH_DEV_OFFLINED ; 
 int SCSI_DH_NOMEM ; 
 int SCSI_DH_OK ; 
 int FUNC1 (struct scsi_device*,struct alua_dh_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct alua_dh_data*) ; 
 struct alua_dh_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct scsi_device *sdev)
{
	struct alua_dh_data *h;
	int err;

	h = FUNC3(sizeof(*h) , GFP_KERNEL);
	if (!h)
		return SCSI_DH_NOMEM;
	FUNC6(&h->pg_lock);
	FUNC5(h->pg, NULL);
	h->init_error = SCSI_DH_OK;
	h->sdev = sdev;
	FUNC0(&h->node);

	FUNC4(&h->init_mutex);
	err = FUNC1(sdev, h);
	if (err != SCSI_DH_OK && err != SCSI_DH_DEV_OFFLINED)
		goto failed;

	sdev->handler_data = h;
	return SCSI_DH_OK;
failed:
	FUNC2(h);
	return err;
}