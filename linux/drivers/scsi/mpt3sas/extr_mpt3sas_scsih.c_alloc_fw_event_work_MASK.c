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
struct fw_event_work {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct fw_event_work* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fw_event_work *FUNC2(int len)
{
	struct fw_event_work *fw_event;

	fw_event = FUNC1(sizeof(*fw_event) + len, GFP_ATOMIC);
	if (!fw_event)
		return NULL;

	FUNC0(&fw_event->refcount);
	return fw_event;
}