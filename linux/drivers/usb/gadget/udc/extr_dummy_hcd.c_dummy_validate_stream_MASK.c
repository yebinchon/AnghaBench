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
struct urb {unsigned int stream_id; int /*<<< orphan*/  pipe; } ;
struct dummy_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct dummy_hcd*) ; 
 int FUNC3 (struct dummy_hcd*,struct urb*) ; 
 unsigned int FUNC4 (struct dummy_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dummy_hcd *dum_hcd, struct urb *urb)
{
	unsigned int max_streams;
	int enabled;

	enabled = FUNC3(dum_hcd, urb);
	if (!urb->stream_id) {
		if (enabled)
			return -EINVAL;
		return 0;
	}
	if (!enabled)
		return -EINVAL;

	max_streams = FUNC4(dum_hcd,
			FUNC5(urb->pipe));
	if (urb->stream_id > max_streams) {
		FUNC1(FUNC2(dum_hcd), "Stream id %d is out of range.\n",
				urb->stream_id);
		FUNC0();
		return -EINVAL;
	}
	return 0;
}