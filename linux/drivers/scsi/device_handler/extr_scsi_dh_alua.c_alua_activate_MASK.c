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
struct alua_queue_data {void* callback_data; int /*<<< orphan*/  (* callback_fn ) (void*,int) ;} ;
struct alua_port_group {int /*<<< orphan*/  kref; } ;
struct alua_dh_data {int init_error; int /*<<< orphan*/  init_mutex; int /*<<< orphan*/  pg; } ;
typedef  int /*<<< orphan*/  (* activate_complete ) (void*,int) ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SCSI_DH_DEV_OFFLINED ; 
 int SCSI_DH_OK ; 
 int SCSI_DH_RES_TEMP_UNAVAIL ; 
 scalar_t__ FUNC0 (struct alua_port_group*,struct scsi_device*,struct alua_queue_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct alua_queue_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct alua_queue_data* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct alua_port_group* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  release_port_group ; 

__attribute__((used)) static int FUNC10(struct scsi_device *sdev,
			activate_complete fn, void *data)
{
	struct alua_dh_data *h = sdev->handler_data;
	int err = SCSI_DH_OK;
	struct alua_queue_data *qdata;
	struct alua_port_group *pg;

	qdata = FUNC4(sizeof(*qdata), GFP_KERNEL);
	if (!qdata) {
		err = SCSI_DH_RES_TEMP_UNAVAIL;
		goto out;
	}
	qdata->callback_fn = fn;
	qdata->callback_data = data;

	FUNC5(&h->init_mutex);
	FUNC8();
	pg = FUNC7(h->pg);
	if (!pg || !FUNC2(&pg->kref)) {
		FUNC9();
		FUNC1(qdata);
		err = h->init_error;
		FUNC6(&h->init_mutex);
		goto out;
	}
	FUNC9();
	FUNC6(&h->init_mutex);

	if (FUNC0(pg, sdev, qdata, true))
		fn = NULL;
	else
		err = SCSI_DH_DEV_OFFLINED;
	FUNC3(&pg->kref, release_port_group);
out:
	if (fn)
		fn(data, err);
	return 0;
}