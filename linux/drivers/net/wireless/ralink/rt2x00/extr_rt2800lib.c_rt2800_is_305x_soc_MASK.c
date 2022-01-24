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
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RF3020 ; 
 int /*<<< orphan*/  RF3021 ; 
 int /*<<< orphan*/  RF3022 ; 
 int /*<<< orphan*/  RT2872 ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,char*) ; 

__attribute__((used)) static inline bool FUNC4(struct rt2x00_dev *rt2x00dev)
{
	/* check for rt2872 on SoC */
	if (!FUNC0(rt2x00dev) ||
	    !FUNC2(rt2x00dev, RT2872))
		return false;

	/* we know for sure that these rf chipsets are used on rt305x boards */
	if (FUNC1(rt2x00dev, RF3020) ||
	    FUNC1(rt2x00dev, RF3021) ||
	    FUNC1(rt2x00dev, RF3022))
		return true;

	FUNC3(rt2x00dev, "Unknown RF chipset on rt305x\n");
	return false;
}