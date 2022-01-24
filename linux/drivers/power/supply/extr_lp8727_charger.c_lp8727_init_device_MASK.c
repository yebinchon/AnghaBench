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
typedef  int u8 ;
struct lp8727_chg {int dummy; } ;

/* Variables and functions */
 int LP8727_ADC_EN ; 
 int LP8727_CHGDET_EN ; 
 int LP8727_CP_EN ; 
 int /*<<< orphan*/  LP8727_CTRL1 ; 
 int /*<<< orphan*/  LP8727_CTRL2 ; 
 int LP8727_ID200_EN ; 
 int /*<<< orphan*/  LP8727_INT1 ; 
 int LP8727_INT_EN ; 
 int LP8788_NUM_INTREGS ; 
 int FUNC0 (struct lp8727_chg*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC1 (struct lp8727_chg*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct lp8727_chg *pchg)
{
	u8 val;
	int ret;
	u8 intstat[LP8788_NUM_INTREGS];

	/* clear interrupts */
	ret = FUNC0(pchg, LP8727_INT1, intstat, LP8788_NUM_INTREGS);
	if (ret)
		return ret;

	val = LP8727_ID200_EN | LP8727_ADC_EN | LP8727_CP_EN;
	ret = FUNC1(pchg, LP8727_CTRL1, val);
	if (ret)
		return ret;

	val = LP8727_INT_EN | LP8727_CHGDET_EN;
	return FUNC1(pchg, LP8727_CTRL2, val);
}