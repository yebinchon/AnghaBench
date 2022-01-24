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
typedef  int u16 ;
struct super_block {int dummy; } ;

/* Variables and functions */
 int MAX_NAME_LENGTH ; 
 scalar_t__ FUNC0 (struct super_block*,int) ; 

int FUNC1(struct super_block *sb, u16 *a, u16 *b)
{
	int i;

	for (i = 0; i < MAX_NAME_LENGTH; i++, a++, b++) {
		if (FUNC0(sb, *a) != FUNC0(sb, *b))
			return 1;
		if (*a == 0x0)
			return 0;
	}
	return 0;
}