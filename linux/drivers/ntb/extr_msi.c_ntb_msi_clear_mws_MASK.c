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
struct ntb_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ntb_dev*,int,int) ; 
 int FUNC1 (struct ntb_dev*,int) ; 
 int FUNC2 (struct ntb_dev*) ; 

void FUNC3(struct ntb_dev *ntb)
{
	int peer;
	int peer_widx;

	for (peer = 0; peer < FUNC2(ntb); peer++) {
		peer_widx = FUNC1(ntb, peer);
		if (peer_widx < 0)
			continue;

		FUNC0(ntb, peer, peer_widx);
	}
}