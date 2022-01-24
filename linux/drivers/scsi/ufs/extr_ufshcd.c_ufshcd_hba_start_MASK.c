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
struct ufs_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROLLER_ENABLE ; 
 int /*<<< orphan*/  REG_CONTROLLER_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct ufs_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct ufs_hba *hba)
{
	FUNC0(hba, CONTROLLER_ENABLE, REG_CONTROLLER_ENABLE);
}