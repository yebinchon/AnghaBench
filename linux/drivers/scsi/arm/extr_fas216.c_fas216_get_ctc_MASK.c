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
 int /*<<< orphan*/  REG_CTCH ; 
 int /*<<< orphan*/  REG_CTCL ; 
 int /*<<< orphan*/  REG_CTCM ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC1(FAS216_Info *info)
{
	return FUNC0(info, REG_CTCL) +
	       (FUNC0(info, REG_CTCM) << 8) +
	       (FUNC0(info, REG_CTCH) << 16);
}