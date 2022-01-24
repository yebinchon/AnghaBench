#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dlm_rsb {TYPE_1__* res_ls; } ;
struct dlm_lkb {int dummy; } ;
struct TYPE_4__ {scalar_t__ m_result; int /*<<< orphan*/  m_type; int /*<<< orphan*/  m_flags; } ;
struct TYPE_3__ {TYPE_2__ ls_stub_ms; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_IFL_STUB_MS ; 
 int /*<<< orphan*/  DLM_MSG_CONVERT ; 
 int /*<<< orphan*/  DLM_MSG_CONVERT_REPLY ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_rsb*,struct dlm_lkb*,TYPE_2__*) ; 
 scalar_t__ FUNC1 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_lkb*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dlm_rsb*,struct dlm_lkb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
	int error;

	error = FUNC3(r, lkb, DLM_MSG_CONVERT);

	/* down conversions go without a reply from the master */
	if (!error && FUNC1(lkb)) {
		FUNC2(lkb, DLM_MSG_CONVERT_REPLY);
		r->res_ls->ls_stub_ms.m_flags = DLM_IFL_STUB_MS;
		r->res_ls->ls_stub_ms.m_type = DLM_MSG_CONVERT_REPLY;
		r->res_ls->ls_stub_ms.m_result = 0;
		FUNC0(r, lkb, &r->res_ls->ls_stub_ms);
	}

	return error;
}