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
typedef  int /*<<< orphan*/  FAS216_Info ;

/* Variables and functions */
 int /*<<< orphan*/  REG_STCH ; 
 int /*<<< orphan*/  REG_STCL ; 
 int /*<<< orphan*/  REG_STCM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC1(FAS216_Info *info, unsigned int length)
{
	FUNC0(info, REG_STCL, length);
	FUNC0(info, REG_STCM, length >> 8);
	FUNC0(info, REG_STCH, length >> 16);
}