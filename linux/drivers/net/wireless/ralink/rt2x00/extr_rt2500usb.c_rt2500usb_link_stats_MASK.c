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
typedef  int /*<<< orphan*/  u16 ;
struct rt2x00_dev {int dummy; } ;
struct link_qual {void* false_cca; void* rx_failed; } ;

/* Variables and functions */
 int /*<<< orphan*/  STA_CSR0 ; 
 int /*<<< orphan*/  STA_CSR0_FCS_ERROR ; 
 int /*<<< orphan*/  STA_CSR3 ; 
 int /*<<< orphan*/  STA_CSR3_FALSE_CCA_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rt2x00_dev *rt2x00dev,
				 struct link_qual *qual)
{
	u16 reg;

	/*
	 * Update FCS error count from register.
	 */
	reg = FUNC0(rt2x00dev, STA_CSR0);
	qual->rx_failed = FUNC1(reg, STA_CSR0_FCS_ERROR);

	/*
	 * Update False CCA count from register.
	 */
	reg = FUNC0(rt2x00dev, STA_CSR3);
	qual->false_cca = FUNC1(reg, STA_CSR3_FALSE_CCA_ERROR);
}