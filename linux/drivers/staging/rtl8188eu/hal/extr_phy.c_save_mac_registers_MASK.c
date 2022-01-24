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
typedef  int u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int IQK_MAC_REG_NUM ; 
 int FUNC0 (struct adapter*,int) ; 
 int FUNC1 (struct adapter*,int) ; 

__attribute__((used)) static void FUNC2(struct adapter *adapt, u32 *mac_reg,
			       u32 *backup)
{
	u32 i;

	for (i = 0; i < (IQK_MAC_REG_NUM - 1); i++)
		backup[i] = FUNC1(adapt, mac_reg[i]);

	backup[i] = FUNC0(adapt, mac_reg[i]);
}