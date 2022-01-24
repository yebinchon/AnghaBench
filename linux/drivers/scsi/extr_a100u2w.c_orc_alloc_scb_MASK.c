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
struct orc_scb {int dummy; } ;
struct orc_host {int /*<<< orphan*/  allocation_lock; } ;

/* Variables and functions */
 struct orc_scb* FUNC0 (struct orc_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct orc_scb *FUNC3(struct orc_host * host)
{
	struct orc_scb *scb;
	unsigned long flags;

	FUNC1(&host->allocation_lock, flags);
	scb = FUNC0(host);
	FUNC2(&host->allocation_lock, flags);
	return scb;
}