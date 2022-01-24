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
struct rtllib_device {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  global_domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtllib_device*) ; 
 scalar_t__ FUNC1 (struct rtllib_device*) ; 
 scalar_t__ RTLLIB_NOLINK ; 
 int /*<<< orphan*/  FUNC2 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct rtllib_device *ieee)
{
	unsigned long flags;

	if (FUNC1(ieee) && !FUNC0(ieee)) {
		if (!ieee->global_domain)
			return;
	}
	/* check if we have already found the net we
	 * are interested in (if any).
	 * if not (we are disassociated and we are not
	 * in associating / authenticating phase) start the background scanning.
	 */
	FUNC2(ieee);

	/* ensure no-one start an associating process (thus setting
	 * the ieee->state to rtllib_ASSOCIATING) while we
	 * have just checked it and we are going to enable scan.
	 * The rtllib_new_net function is always called with
	 * lock held (from both rtllib_softmac_check_all_nets and
	 * the rx path), so we cannot be in the middle of such function
	 */
	FUNC4(&ieee->lock, flags);

	if (ieee->state == RTLLIB_NOLINK)
		FUNC3(ieee);
	FUNC5(&ieee->lock, flags);
}