#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* wwn_t ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct fchs_s {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rxsz; } ;
struct TYPE_6__ {int /*<<< orphan*/  rxsz; } ;
struct TYPE_5__ {int /*<<< orphan*/  els_code; } ;
struct fc_logi_s {void* node_name; void* port_name; TYPE_1__ class3; TYPE_3__ csp; TYPE_2__ els_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_ELS_FDISC ; 
 int /*<<< orphan*/  FC_FABRIC_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct fchs_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_logi_s*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  plogi_tmpl ; 

u16
FUNC4(struct fchs_s *fchs, struct fc_logi_s *flogi, u32 s_id,
		u16 ox_id, wwn_t port_name, wwn_t node_name, u16 pdu_size)
{
	u32        d_id = FUNC0(FC_FABRIC_PORT);

	FUNC3(flogi, &plogi_tmpl, sizeof(struct fc_logi_s));

	flogi->els_cmd.els_code = FC_ELS_FDISC;
	FUNC2(fchs, d_id, s_id, ox_id);

	flogi->csp.rxsz = flogi->class3.rxsz = FUNC1(pdu_size);
	flogi->port_name = port_name;
	flogi->node_name = node_name;

	return sizeof(struct fc_logi_s);
}