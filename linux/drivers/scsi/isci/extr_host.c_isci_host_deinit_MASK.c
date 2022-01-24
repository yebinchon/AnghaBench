#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  timer; } ;
struct isci_port {TYPE_4__ timer; } ;
struct TYPE_18__ {int /*<<< orphan*/  timer; } ;
struct isci_phy {TYPE_5__ sata_timer; } ;
struct TYPE_13__ {int /*<<< orphan*/  timer; } ;
struct TYPE_12__ {int /*<<< orphan*/  timer; } ;
struct TYPE_21__ {int /*<<< orphan*/  timer; } ;
struct TYPE_22__ {TYPE_8__ timer; } ;
struct TYPE_19__ {int /*<<< orphan*/  timer; } ;
struct TYPE_20__ {TYPE_6__ timer; } ;
struct isci_host {int logical_port_entries; TYPE_11__ phy_timer; TYPE_10__ timer; TYPE_9__ power_control; TYPE_7__ port_agent; struct isci_phy* phys; struct isci_port* ports; int /*<<< orphan*/  scic_lock; TYPE_3__* scu_registers; int /*<<< orphan*/  flags; } ;
struct TYPE_14__ {int /*<<< orphan*/  interface_control; int /*<<< orphan*/ * output_data_select; } ;
struct TYPE_15__ {TYPE_1__ sgpio; } ;
struct TYPE_16__ {TYPE_2__ peg0; } ;

/* Variables and functions */
 int /*<<< orphan*/  IHOST_STOP_PENDING ; 
 int /*<<< orphan*/  SCIC_CONTROLLER_STOP_TIMEOUT ; 
 int SCI_MAX_PHYS ; 
 int /*<<< orphan*/  SGPIO_HW_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct isci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct isci_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct isci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct isci_host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct isci_host*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC10(struct isci_host *ihost)
{
	int i;

	/* disable output data selects */
	for (i = 0; i < FUNC1(ihost); i++)
		FUNC9(SGPIO_HW_CONTROL, &ihost->scu_registers->peg0.sgpio.output_data_select[i]);

	FUNC5(IHOST_STOP_PENDING, &ihost->flags);

	FUNC6(&ihost->scic_lock);
	FUNC3(ihost, SCIC_CONTROLLER_STOP_TIMEOUT);
	FUNC7(&ihost->scic_lock);

	FUNC8(ihost);

	/* phy stop is after controller stop to allow port and device to
	 * go idle before shutting down the phys, but the expectation is
	 * that i/o has been shut off well before we reach this
	 * function.
	 */
	FUNC4(ihost);

	/* disable sgpio: where the above wait should give time for the
	 * enclosure to sample the gpios going inactive
	 */
	FUNC9(0, &ihost->scu_registers->peg0.sgpio.interface_control);

	FUNC6(&ihost->scic_lock);
	FUNC2(ihost);
	FUNC7(&ihost->scic_lock);

	/* Cancel any/all outstanding port timers */
	for (i = 0; i < ihost->logical_port_entries; i++) {
		struct isci_port *iport = &ihost->ports[i];
		FUNC0(&iport->timer.timer);
	}

	/* Cancel any/all outstanding phy timers */
	for (i = 0; i < SCI_MAX_PHYS; i++) {
		struct isci_phy *iphy = &ihost->phys[i];
		FUNC0(&iphy->sata_timer.timer);
	}

	FUNC0(&ihost->port_agent.timer.timer);

	FUNC0(&ihost->power_control.timer.timer);

	FUNC0(&ihost->timer.timer);

	FUNC0(&ihost->phy_timer.timer);
}