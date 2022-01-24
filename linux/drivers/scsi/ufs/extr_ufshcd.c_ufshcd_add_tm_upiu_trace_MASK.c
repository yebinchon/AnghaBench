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
struct utp_task_req_desc {int /*<<< orphan*/  input_param1; int /*<<< orphan*/  req_header; } ;
struct ufs_hba {int nutrs; int /*<<< orphan*/  dev; struct utp_task_req_desc* utmrdl_base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ufs_hba *hba, unsigned int tag,
		const char *str)
{
	int off = (int)tag - hba->nutrs;
	struct utp_task_req_desc *descp = &hba->utmrdl_base_addr[off];

	FUNC1(FUNC0(hba->dev), str, &descp->req_header,
			&descp->input_param1);
}