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
struct fotg210_iso_stream {int /*<<< orphan*/  free_list; } ;
struct fotg210_iso_sched {int /*<<< orphan*/  td_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fotg210_iso_sched*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct fotg210_iso_stream *stream,
		struct fotg210_iso_sched *iso_sched)
{
	if (!iso_sched)
		return;
	/* caller must hold fotg210->lock!*/
	FUNC1(&iso_sched->td_list, &stream->free_list);
	FUNC0(iso_sched);
}