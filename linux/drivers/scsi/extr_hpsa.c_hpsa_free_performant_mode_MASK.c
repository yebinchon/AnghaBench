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
struct ctlr_info {int /*<<< orphan*/ * blockFetchTable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ctlr_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct ctlr_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ctlr_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ctlr_info *h)
{
	FUNC3(h->blockFetchTable);
	h->blockFetchTable = NULL;
	FUNC2(h);
	FUNC0(h);
	FUNC1(h);
}