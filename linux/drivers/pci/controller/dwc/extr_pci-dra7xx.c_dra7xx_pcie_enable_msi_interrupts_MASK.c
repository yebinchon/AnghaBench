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
struct dra7xx_pcie {int dummy; } ;

/* Variables and functions */
 int LEG_EP_INTERRUPTS ; 
 int MSI ; 
 int /*<<< orphan*/  PCIECTRL_DRA7XX_CONF_IRQENABLE_SET_MSI ; 
 int /*<<< orphan*/  PCIECTRL_DRA7XX_CONF_IRQSTATUS_MSI ; 
 int /*<<< orphan*/  FUNC0 (struct dra7xx_pcie*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct dra7xx_pcie *dra7xx)
{
	FUNC0(dra7xx, PCIECTRL_DRA7XX_CONF_IRQSTATUS_MSI,
			   LEG_EP_INTERRUPTS | MSI);

	FUNC0(dra7xx,
			   PCIECTRL_DRA7XX_CONF_IRQENABLE_SET_MSI,
			   MSI | LEG_EP_INTERRUPTS);
}