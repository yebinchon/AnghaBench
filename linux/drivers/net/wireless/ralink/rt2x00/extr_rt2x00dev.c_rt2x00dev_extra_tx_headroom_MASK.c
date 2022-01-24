#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rt2x00_dev {TYPE_1__* tx; } ;
struct TYPE_2__ {unsigned int winfo_size; unsigned int desc_size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct rt2x00_dev*) ; 

__attribute__((used)) static unsigned int FUNC2(struct rt2x00_dev *rt2x00dev)
{
	if (FUNC0(!rt2x00dev->tx))
		return 0;

	if (FUNC1(rt2x00dev))
		return rt2x00dev->tx[0].winfo_size + rt2x00dev->tx[0].desc_size;

	return rt2x00dev->tx[0].winfo_size;
}