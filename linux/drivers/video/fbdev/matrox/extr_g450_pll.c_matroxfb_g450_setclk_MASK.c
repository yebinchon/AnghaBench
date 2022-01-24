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
struct matrox_fb_info {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MNP_TABLE_SIZE ; 
 int FUNC0 (struct matrox_fb_info*,unsigned int,unsigned int,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*) ; 
 unsigned int* FUNC2 (int,int /*<<< orphan*/ ) ; 

int FUNC3(struct matrox_fb_info *minfo, unsigned int fout,
			 unsigned int pll)
{
	unsigned int* arr;
	
	arr = FUNC2(sizeof(*arr) * MNP_TABLE_SIZE * 2, GFP_KERNEL);
	if (arr) {
		int r;

		r = FUNC0(minfo, fout, pll, arr, arr + MNP_TABLE_SIZE);
		FUNC1(arr);
		return r;
	}
	return -ENOMEM;
}