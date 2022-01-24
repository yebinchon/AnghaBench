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
typedef  size_t u32 ;
struct net2280 {int /*<<< orphan*/ * ep; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ep_bit ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net2280 *dev, u32 stat0)
{
	u32 index;
	u32 bit;

	for (index = 0; index < FUNC0(ep_bit); index++) {
		bit = FUNC1(ep_bit[index]);

		if (!stat0)
			break;

		if (!(stat0 & bit))
			continue;

		stat0 &= ~bit;

		FUNC2(&dev->ep[index]);
	}
}