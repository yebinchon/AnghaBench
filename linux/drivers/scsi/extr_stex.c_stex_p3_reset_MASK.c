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
struct st_hba {scalar_t__ mmio_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  SS_H2I_INT_RESET ; 
 scalar_t__ YH2I_INT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct st_hba *hba)
{
	FUNC1(SS_H2I_INT_RESET, hba->mmio_base + YH2I_INT);
	FUNC0(5);
}