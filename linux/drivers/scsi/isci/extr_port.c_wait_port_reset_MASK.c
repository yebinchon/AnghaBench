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
struct isci_port {int /*<<< orphan*/  state; } ;
struct isci_host {int /*<<< orphan*/  eventq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPORT_RESET_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct isci_host *ihost, struct isci_port *iport)
{
	FUNC1(ihost->eventq, !FUNC0(IPORT_RESET_PENDING, &iport->state));
}