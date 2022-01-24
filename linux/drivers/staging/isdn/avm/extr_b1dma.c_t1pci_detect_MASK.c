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
typedef  int /*<<< orphan*/  avmcard ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(avmcard *card)
{
	int ret;

	if ((ret = FUNC2(card)) != 0)
		return ret;

	/* Transputer test */

	if (FUNC1(card, 0x80001000, 0x11) != 0
	    || FUNC1(card, 0x80101000, 0x22) != 0
	    || FUNC1(card, 0x80201000, 0x33) != 0
	    || FUNC1(card, 0x80301000, 0x44) != 0)
		return 6;

	if (FUNC0(card, 0x80001000) != 0x11
	    || FUNC0(card, 0x80101000) != 0x22
	    || FUNC0(card, 0x80201000) != 0x33
	    || FUNC0(card, 0x80301000) != 0x44)
		return 7;

	if (FUNC1(card, 0x80001000, 0x55) != 0
	    || FUNC1(card, 0x80101000, 0x66) != 0
	    || FUNC1(card, 0x80201000, 0x77) != 0
	    || FUNC1(card, 0x80301000, 0x88) != 0)
		return 8;

	if (FUNC0(card, 0x80001000) != 0x55
	    || FUNC0(card, 0x80101000) != 0x66
	    || FUNC0(card, 0x80201000) != 0x77
	    || FUNC0(card, 0x80301000) != 0x88)
		return 9;

	return 0;
}