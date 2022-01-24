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
typedef  int s64 ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (int,int) ; 

__attribute__((used)) static s64 FUNC1(s64 a, s32 b)
{
	s64 r, al;

	/* Scale up for increased precision division */
	al = a << 16;

	r = FUNC0(al * 2 + 1, 2 * b);
	return r >> 16;
}