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
typedef  int /*<<< orphan*/  u32 ;
struct txdone_entry_desc {scalar_t__ retry; scalar_t__ flags; } ;
struct queue_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct queue_entry*,struct txdone_entry_desc*) ; 

void FUNC2(struct queue_entry *entry, u32 status)
{
	struct txdone_entry_desc txdesc;

	txdesc.flags = 0;
	FUNC0(status, &txdesc.flags);
	txdesc.retry = 0;

	FUNC1(entry, &txdesc);
}