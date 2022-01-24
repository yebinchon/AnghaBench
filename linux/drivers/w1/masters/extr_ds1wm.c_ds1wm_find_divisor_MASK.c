#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int freq; int divisor; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* freq ; 

__attribute__((used)) static int FUNC1(int gclk)
{
	int i;

	for (i = FUNC0(freq)-1; i >= 0; --i)
		if (gclk >= freq[i].freq)
			return freq[i].divisor;

	return 0;
}