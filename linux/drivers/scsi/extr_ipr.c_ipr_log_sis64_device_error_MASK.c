#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ipr_ioa_cfg {int dummy; } ;
struct ipr_hostrcb_type_21_error {char* primary_problem_desc; char* second_problem_desc; int /*<<< orphan*/  length_of_error; int /*<<< orphan*/  ioa_data; int /*<<< orphan*/  cdb; int /*<<< orphan*/  sense_data; int /*<<< orphan*/  res_path; int /*<<< orphan*/ * wwn; } ;
struct TYPE_5__ {struct ipr_hostrcb_type_21_error type_21_error; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
struct TYPE_7__ {TYPE_2__ error64; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
struct ipr_hostrcb {TYPE_4__ hcam; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int IPR_MAX_RES_PATH_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ipr_ioa_cfg*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct ipr_ioa_cfg *ioa_cfg,
					 struct ipr_hostrcb *hostrcb)
{
	struct ipr_hostrcb_type_21_error *error;
	char buffer[IPR_MAX_RES_PATH_LENGTH];

	error = &hostrcb->hcam.u.error64.u.type_21_error;

	FUNC2("-----Failing Device Information-----\n");
	FUNC2("World Wide Unique ID: %08X%08X%08X%08X\n",
		FUNC1(error->wwn[0]), FUNC1(error->wwn[1]),
		 FUNC1(error->wwn[2]), FUNC1(error->wwn[3]));
	FUNC2("Device Resource Path: %s\n",
		FUNC0(error->res_path,
				      buffer, sizeof(buffer)));
	error->primary_problem_desc[sizeof(error->primary_problem_desc) - 1] = '\0';
	error->second_problem_desc[sizeof(error->second_problem_desc) - 1] = '\0';
	FUNC2("Primary Problem Description: %s\n", error->primary_problem_desc);
	FUNC2("Secondary Problem Description:  %s\n", error->second_problem_desc);
	FUNC2("SCSI Sense Data:\n");
	FUNC3(ioa_cfg, error->sense_data, sizeof(error->sense_data));
	FUNC2("SCSI Command Descriptor Block: \n");
	FUNC3(ioa_cfg, error->cdb, sizeof(error->cdb));

	FUNC2("Additional IOA Data:\n");
	FUNC3(ioa_cfg, error->ioa_data, FUNC1(error->length_of_error));
}