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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int scrollback_delta ; 

__attribute__((used)) static inline void FUNC1(int lines)
{
	/* FIXME */
	/* scrolldelta needs some kind of consistency lock, but the BKL was
	   and still is not protecting versus the scheduled back end */
	scrollback_delta += lines;
	FUNC0();
}