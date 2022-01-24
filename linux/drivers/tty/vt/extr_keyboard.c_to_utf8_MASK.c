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
typedef  int uint ;
struct vc_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vc_data*,int) ; 

__attribute__((used)) static void FUNC1(struct vc_data *vc, uint c)
{
	if (c < 0x80)
		/*  0******* */
		FUNC0(vc, c);
	else if (c < 0x800) {
		/* 110***** 10****** */
		FUNC0(vc, 0xc0 | (c >> 6));
		FUNC0(vc, 0x80 | (c & 0x3f));
	} else if (c < 0x10000) {
		if (c >= 0xD800 && c < 0xE000)
			return;
		if (c == 0xFFFF)
			return;
		/* 1110**** 10****** 10****** */
		FUNC0(vc, 0xe0 | (c >> 12));
		FUNC0(vc, 0x80 | ((c >> 6) & 0x3f));
		FUNC0(vc, 0x80 | (c & 0x3f));
	} else if (c < 0x110000) {
		/* 11110*** 10****** 10****** 10****** */
		FUNC0(vc, 0xf0 | (c >> 18));
		FUNC0(vc, 0x80 | ((c >> 12) & 0x3f));
		FUNC0(vc, 0x80 | ((c >> 6) & 0x3f));
		FUNC0(vc, 0x80 | (c & 0x3f));
	}
}