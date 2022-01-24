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
struct hid_report {int /*<<< orphan*/  type; int /*<<< orphan*/  id; } ;
struct gb_hid {int /*<<< orphan*/  inbuf; int /*<<< orphan*/  hid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gb_hid*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (struct hid_report*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 

__attribute__((used)) static void FUNC3(struct gb_hid *ghid, struct hid_report *report)
{
	unsigned int size;

	size = FUNC1(report);
	if (FUNC0(ghid, report->type, report->id, ghid->inbuf,
			      size))
		return;

	/*
	 * hid->driver_lock is held as we are in probe function,
	 * we just need to setup the input fields, so using
	 * hid_report_raw_event is safe.
	 */
	FUNC2(ghid->hid, report->type, ghid->inbuf, size, 1);
}