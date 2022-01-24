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
struct tb_nhi {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VS_CAP_15 ; 
 int /*<<< orphan*/  VS_CAP_16 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct tb_nhi *nhi)
{
	u32 max_ltr, ltr;

	FUNC0(nhi->pdev, VS_CAP_16, &max_ltr);
	max_ltr &= 0xffff;
	/* Program the same value for both snoop and no-snoop */
	ltr = max_ltr << 16 | max_ltr;
	FUNC1(nhi->pdev, VS_CAP_15, ltr);
}