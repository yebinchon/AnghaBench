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
struct keystone_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_IRQ_ALL ; 
 int /*<<< orphan*/  ERR_IRQ_ENABLE_SET ; 
 int /*<<< orphan*/  FUNC0 (struct keystone_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct keystone_pcie *ks_pcie)
{
	FUNC0(ks_pcie, ERR_IRQ_ENABLE_SET, ERR_IRQ_ALL);
}