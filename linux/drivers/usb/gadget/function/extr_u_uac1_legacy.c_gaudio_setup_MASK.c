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
struct gaudio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gaudio*,char*) ; 
 int FUNC1 (struct gaudio*) ; 

int FUNC2(struct gaudio *card)
{
	int	ret;

	ret = FUNC1(card);
	if (ret)
		FUNC0(card, "we need at least one control device\n");

	return ret;

}