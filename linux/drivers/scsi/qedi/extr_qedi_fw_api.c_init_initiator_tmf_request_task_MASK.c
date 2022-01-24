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
struct iscsi_tmf_request_hdr {int dummy; } ;
struct iscsi_task_params {int dummy; } ;
struct iscsi_common_hdr {int dummy; } ;
struct data_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_TASK_TYPE_MIDPATH ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_task_params*,struct data_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_task_params*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct iscsi_common_hdr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct iscsi_task_params *task_params,
				    struct iscsi_tmf_request_hdr *tmf_header)
{
	FUNC0(task_params, (struct data_hdr *)tmf_header,
				ISCSI_TASK_TYPE_MIDPATH);

	FUNC1(task_params, NULL, NULL,
		 (struct iscsi_common_hdr *)tmf_header, NULL,
		 ISCSI_TASK_TYPE_MIDPATH, false);

	return 0;
}