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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int dummy; } ;
struct link_qual {int /*<<< orphan*/  false_cca; int /*<<< orphan*/  rx_failed; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNT0 ; 
 int /*<<< orphan*/  CNT0_FCS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rt2x00_dev *rt2x00dev,
				 struct link_qual *qual)
{
	u32 reg;
	u8 bbp;

	/*
	 * Update FCS error count from register.
	 */
	reg = FUNC2(rt2x00dev, CNT0);
	qual->rx_failed = FUNC1(reg, CNT0_FCS_ERROR);

	/*
	 * Update False CCA count from register.
	 */
	bbp = FUNC0(rt2x00dev, 39);
	qual->false_cca = bbp;
}