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
struct bnx2fc_hba {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct bnx2fc_hba*) ; 
 scalar_t__ FUNC1 (struct bnx2fc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2fc_hba*) ; 

__attribute__((used)) static int FUNC3(struct bnx2fc_hba *hba)
{
	if (FUNC1(hba))
		goto mem_err;

	if (FUNC0(hba))
		goto mem_err;

	return 0;
mem_err:
	FUNC2(hba);
	return -ENOMEM;
}