#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct utp_upiu_rsp {int dummy; } ;
struct TYPE_2__ {scalar_t__ dword_2; scalar_t__ dword_1; int /*<<< orphan*/  dword_0; } ;
struct utp_upiu_req {TYPE_1__ header; } ;
struct ufshcd_lrb {struct utp_upiu_req* ucd_rsp_ptr; int /*<<< orphan*/  task_tag; struct utp_upiu_req* ucd_req_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UPIU_TRANSACTION_NOP_OUT ; 
 int /*<<< orphan*/  FUNC1 (struct utp_upiu_req*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct ufshcd_lrb *lrbp)
{
	struct utp_upiu_req *ucd_req_ptr = lrbp->ucd_req_ptr;

	FUNC1(ucd_req_ptr, 0, sizeof(struct utp_upiu_req));

	/* command descriptor fields */
	ucd_req_ptr->header.dword_0 =
		FUNC0(
			UPIU_TRANSACTION_NOP_OUT, 0, 0, lrbp->task_tag);
	/* clear rest of the fields of basic header */
	ucd_req_ptr->header.dword_1 = 0;
	ucd_req_ptr->header.dword_2 = 0;

	FUNC1(lrbp->ucd_rsp_ptr, 0, sizeof(struct utp_upiu_rsp));
}