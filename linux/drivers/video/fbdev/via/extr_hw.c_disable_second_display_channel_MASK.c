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
 int BIT6 ; 
 int BIT7 ; 
 int /*<<< orphan*/  CR6A ; 
 int /*<<< orphan*/  VIACR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC1(void)
{
	/* to disable second display channel. */
	FUNC0(CR6A, VIACR, 0x00, BIT6);
	FUNC0(CR6A, VIACR, 0x00, BIT7);
	FUNC0(CR6A, VIACR, BIT6, BIT6);
}