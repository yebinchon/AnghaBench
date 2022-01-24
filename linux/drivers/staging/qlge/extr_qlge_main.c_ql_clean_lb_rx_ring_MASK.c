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
struct rx_ring {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rx_ring*,int) ; 

int FUNC1(struct rx_ring *rx_ring, int budget)
{
	return FUNC0(rx_ring, budget);
}