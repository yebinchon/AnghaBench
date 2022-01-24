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
struct bfad_s {int dummy; } ;
struct bfa_fcs_lport_s {TYPE_1__* fcs; TYPE_3__* fabric; } ;
struct TYPE_9__ {int /*<<< orphan*/  fwwn; int /*<<< orphan*/  pwwn; } ;
struct TYPE_10__ {TYPE_4__ port; } ;
struct bfa_aen_entry_s {TYPE_5__ aen_data; } ;
typedef  enum bfa_port_aen_event { ____Placeholder_bfa_port_aen_event } bfa_port_aen_event ;
struct TYPE_8__ {TYPE_2__* fcs; } ;
struct TYPE_7__ {scalar_t__ bfad; } ;
struct TYPE_6__ {int /*<<< orphan*/  fcs_aen_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_AEN_CAT_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfad_s*,struct bfa_aen_entry_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_aen_entry_s*,struct bfad_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct bfa_fcs_lport_s *port,
			enum bfa_port_aen_event event)
{
	struct bfad_s *bfad = (struct bfad_s *)port->fabric->fcs->bfad;
	struct bfa_aen_entry_s  *aen_entry;

	FUNC2(bfad, aen_entry);
	if (!aen_entry)
		return;

	aen_entry->aen_data.port.pwwn = FUNC1(port);
	aen_entry->aen_data.port.fwwn = FUNC0(port);

	/* Send the AEN notification */
	FUNC3(aen_entry, bfad, ++port->fcs->fcs_aen_seq,
				  BFA_AEN_CAT_PORT, event);
}