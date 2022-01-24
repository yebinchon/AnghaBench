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
struct mt76x02_dev {int dummy; } ;
typedef  int s8 ;

/* Variables and functions */
 int /*<<< orphan*/  AGC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_BBP_AGC_LNA_HIGH_GAIN ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct mt76x02_dev *dev, int reg, s8 offset)
{
	s8 gain;

	gain = FUNC0(MT_BBP_AGC_LNA_HIGH_GAIN,
			 FUNC3(dev, FUNC1(AGC, reg)));
	gain -= offset / 2;
	FUNC2(dev, FUNC1(AGC, reg), MT_BBP_AGC_LNA_HIGH_GAIN, gain);
}