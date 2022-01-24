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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct fchs_s {int dummy; } ;
struct fc_prlo_acc_s {int page_len; int /*<<< orphan*/  payload_len; TYPE_1__* prlo_acc_params; int /*<<< orphan*/  command; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {scalar_t__ resp_process_assc; scalar_t__ orig_process_assc; int /*<<< orphan*/  fc4type_csp; scalar_t__ rpa_valid; scalar_t__ opa_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_ELS_ACC ; 
 int /*<<< orphan*/  FC_TYPE_FCP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct fchs_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_prlo_acc_s*,int /*<<< orphan*/ ,int) ; 

u16
FUNC4(struct fchs_s *fchs, struct fc_prlo_acc_s *prlo_acc, u32 d_id,
		  u32 s_id, __be16 ox_id, int num_pages)
{
	int             page;

	FUNC2(fchs, d_id, s_id, ox_id);

	FUNC3(prlo_acc, 0, (num_pages * 16) + 4);
	prlo_acc->command = FC_ELS_ACC;
	prlo_acc->page_len = 0x10;
	prlo_acc->payload_len = FUNC1((num_pages * 16) + 4);

	for (page = 0; page < num_pages; page++) {
		prlo_acc->prlo_acc_params[page].opa_valid = 0;
		prlo_acc->prlo_acc_params[page].rpa_valid = 0;
		prlo_acc->prlo_acc_params[page].fc4type_csp = FC_TYPE_FCP;
		prlo_acc->prlo_acc_params[page].orig_process_assc = 0;
		prlo_acc->prlo_acc_params[page].resp_process_assc = 0;
	}

	return FUNC0(prlo_acc->payload_len);
}