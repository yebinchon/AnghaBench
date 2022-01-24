#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ipr_std_inq_data {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  scsi_lun; } ;
struct ipr_resource_entry {int flags; int type; int /*<<< orphan*/  res_handle; int /*<<< orphan*/  qmodel; int /*<<< orphan*/  std_inq_data; int /*<<< orphan*/ * res_path; TYPE_5__* ioa_cfg; scalar_t__ sdev; TYPE_1__ dev_lun; int /*<<< orphan*/  dev_id; void* res_flags; } ;
struct TYPE_9__ {TYPE_3__* cfgte; TYPE_2__* cfgte64; } ;
struct ipr_config_table_entry_wrapper {TYPE_4__ u; } ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_10__ {scalar_t__ sis64; } ;
struct TYPE_8__ {int flags; int rsvd_subtype; unsigned int proto; int /*<<< orphan*/  res_handle; int /*<<< orphan*/  std_inq_data; } ;
struct TYPE_7__ {int res_type; unsigned int proto; int /*<<< orphan*/  res_path; int /*<<< orphan*/  lun; int /*<<< orphan*/  dev_id; int /*<<< orphan*/  res_handle; int /*<<< orphan*/  std_inq_data; int /*<<< orphan*/  res_flags; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int IPR_IS_IOA_RESOURCE ; 
 int IPR_MAX_RES_PATH_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct ipr_resource_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipr_resource_entry*) ; 
 int IPR_RES_TYPE_IOAFP ; 
 int /*<<< orphan*/  KERN_INFO ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ipr_resource_entry*,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ipr_resource_entry *res,
				 struct ipr_config_table_entry_wrapper *cfgtew)
{
	char buffer[IPR_MAX_RES_PATH_LENGTH];
	unsigned int proto;
	int new_path = 0;

	if (res->ioa_cfg->sis64) {
		res->flags = FUNC2(cfgtew->u.cfgte64->flags);
		res->res_flags = FUNC2(cfgtew->u.cfgte64->res_flags);
		res->type = cfgtew->u.cfgte64->res_type;

		FUNC6(&res->std_inq_data, &cfgtew->u.cfgte64->std_inq_data,
			sizeof(struct ipr_std_inq_data));

		res->qmodel = FUNC1(res);
		proto = cfgtew->u.cfgte64->proto;
		res->res_handle = cfgtew->u.cfgte64->res_handle;
		res->dev_id = cfgtew->u.cfgte64->dev_id;

		FUNC6(&res->dev_lun.scsi_lun, &cfgtew->u.cfgte64->lun,
			sizeof(res->dev_lun.scsi_lun));

		if (FUNC5(res->res_path, &cfgtew->u.cfgte64->res_path,
					sizeof(res->res_path))) {
			FUNC6(res->res_path, &cfgtew->u.cfgte64->res_path,
				sizeof(res->res_path));
			new_path = 1;
		}

		if (res->sdev && new_path)
			FUNC7(KERN_INFO, res->sdev, "Resource path: %s\n",
				    FUNC3(res->ioa_cfg,
					res->res_path, buffer, sizeof(buffer)));
	} else {
		res->flags = cfgtew->u.cfgte->flags;
		if (res->flags & IPR_IS_IOA_RESOURCE)
			res->type = IPR_RES_TYPE_IOAFP;
		else
			res->type = cfgtew->u.cfgte->rsvd_subtype & 0x0f;

		FUNC6(&res->std_inq_data, &cfgtew->u.cfgte->std_inq_data,
			sizeof(struct ipr_std_inq_data));

		res->qmodel = FUNC0(res);
		proto = cfgtew->u.cfgte->proto;
		res->res_handle = cfgtew->u.cfgte->res_handle;
	}

	FUNC4(res, proto);
}