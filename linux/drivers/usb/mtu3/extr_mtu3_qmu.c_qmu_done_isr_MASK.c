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
typedef  int u32 ;
struct mtu3 {int num_eps; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mtu3*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mtu3*,int) ; 

__attribute__((used)) static void FUNC4(struct mtu3 *mtu, u32 done_status)
{
	int i;

	for (i = 1; i < mtu->num_eps; i++) {
		if (done_status & FUNC0(i))
			FUNC2(mtu, i);
		if (done_status & FUNC1(i))
			FUNC3(mtu, i);
	}
}