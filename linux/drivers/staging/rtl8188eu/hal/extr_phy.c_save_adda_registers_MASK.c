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
typedef  size_t u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  bMaskDWord ; 
 size_t FUNC0 (struct adapter*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct adapter *adapt, u32 *addareg,
				u32 *backup, u32 register_num)
{
	u32 i;

	for (i = 0; i < register_num; i++)
		backup[i] = FUNC0(adapt, addareg[i], bMaskDWord);
}