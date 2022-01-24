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
struct irq_info {unsigned int evtchn; } ;
struct evtchn_expand_array {int /*<<< orphan*/  array_gfn; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 unsigned int EVENT_WORDS_PER_PAGE ; 
 int /*<<< orphan*/  EVTCHNOP_expand_array ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct evtchn_expand_array*) ; 
 unsigned int MAX_EVENT_ARRAY_PAGES ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void** event_array ; 
 unsigned int event_array_pages ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

__attribute__((used)) static int FUNC7(struct irq_info *info)
{
	unsigned port = info->evtchn;
	unsigned new_array_pages;
	int ret;

	new_array_pages = port / EVENT_WORDS_PER_PAGE + 1;

	if (new_array_pages > MAX_EVENT_ARRAY_PAGES)
		return -EINVAL;

	while (event_array_pages < new_array_pages) {
		void *array_page;
		struct evtchn_expand_array expand_array;

		/* Might already have a page if we've resumed. */
		array_page = event_array[event_array_pages];
		if (!array_page) {
			array_page = (void *)FUNC1(GFP_KERNEL);
			if (array_page == NULL) {
				ret = -ENOMEM;
				goto error;
			}
			event_array[event_array_pages] = array_page;
		}

		/* Mask all events in this page before adding it. */
		FUNC3(array_page);

		expand_array.array_gfn = FUNC6(array_page);

		ret = FUNC0(EVTCHNOP_expand_array, &expand_array);
		if (ret < 0)
			goto error;

		event_array_pages++;
	}
	return 0;

  error:
	if (event_array_pages == 0)
		FUNC4("xen: unable to expand event array with initial page (%d)\n", ret);
	else
		FUNC5("unable to expand event array (%d)\n", ret);
	FUNC2();
	return ret;
}