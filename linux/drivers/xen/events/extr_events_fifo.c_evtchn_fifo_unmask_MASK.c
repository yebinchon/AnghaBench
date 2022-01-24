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
struct evtchn_unmask {unsigned int port; } ;
typedef  int /*<<< orphan*/  event_word_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EVTCHNOP_unmask ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct evtchn_unmask*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(unsigned port)
{
	event_word_t *word = FUNC3(port);

	FUNC0(!FUNC5());

	FUNC2(word);
	if (FUNC4(port)) {
		struct evtchn_unmask unmask = { .port = port };
		(void)FUNC1(EVTCHNOP_unmask, &unmask);
	}
}