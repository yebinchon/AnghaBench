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
struct hp_sw_dh_data {scalar_t__ path_state; } ;
typedef  int /*<<< orphan*/  (* activate_complete ) (void*,int) ;

/* Variables and functions */
 scalar_t__ HP_SW_PATH_PASSIVE ; 
 int SCSI_DH_OK ; 
 int FUNC0 (struct hp_sw_dh_data*) ; 
 int FUNC1 (struct scsi_device*,struct hp_sw_dh_data*) ; 

__attribute__((used)) static int FUNC2(struct scsi_device *sdev,
				activate_complete fn, void *data)
{
	int ret = SCSI_DH_OK;
	struct hp_sw_dh_data *h = sdev->handler_data;

	ret = FUNC1(sdev, h);

	if (ret == SCSI_DH_OK && h->path_state == HP_SW_PATH_PASSIVE)
		ret = FUNC0(h);

	if (fn)
		fn(data, ret);
	return 0;
}