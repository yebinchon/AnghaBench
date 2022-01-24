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
struct isci_host {int /*<<< orphan*/  eventq; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IHOST_STOP_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct isci_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct isci_host *ihost)
{
	FUNC1(ihost);
	FUNC0(IHOST_STOP_PENDING, &ihost->flags);
	FUNC2(&ihost->eventq);
}