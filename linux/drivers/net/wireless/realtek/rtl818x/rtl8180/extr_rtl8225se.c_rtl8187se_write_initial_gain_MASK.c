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
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int,int) ; 

__attribute__((used)) static void FUNC2(struct ieee80211_hw *dev,
					int init_gain)
{
	switch (init_gain) {
	default:
		FUNC1(dev, 0x17, 0x26); FUNC0(1);
		FUNC1(dev, 0x24, 0x86); FUNC0(1);
		FUNC1(dev, 0x05, 0xFA); FUNC0(1);
		break;
	case 2:
		FUNC1(dev, 0x17, 0x36); FUNC0(1);
		FUNC1(dev, 0x24, 0x86); FUNC0(1);
		FUNC1(dev, 0x05, 0xFA); FUNC0(1);
		break;
	case 3:
		FUNC1(dev, 0x17, 0x36); FUNC0(1);
		FUNC1(dev, 0x24, 0x86); FUNC0(1);
		FUNC1(dev, 0x05, 0xFB); FUNC0(1);
		break;
	case 4:
		FUNC1(dev, 0x17, 0x46); FUNC0(1);
		FUNC1(dev, 0x24, 0x86); FUNC0(1);
		FUNC1(dev, 0x05, 0xFB); FUNC0(1);
		break;
	case 5:
		FUNC1(dev, 0x17, 0x46); FUNC0(1);
		FUNC1(dev, 0x24, 0x96); FUNC0(1);
		FUNC1(dev, 0x05, 0xFB); FUNC0(1);
		break;
	case 6:
		FUNC1(dev, 0x17, 0x56); FUNC0(1);
		FUNC1(dev, 0x24, 0x96); FUNC0(1);
		FUNC1(dev, 0x05, 0xFC); FUNC0(1);
		break;
	case 7:
		FUNC1(dev, 0x17, 0x56); FUNC0(1);
		FUNC1(dev, 0x24, 0xA6); FUNC0(1);
		FUNC1(dev, 0x05, 0xFC); FUNC0(1);
		break;
	case 8:
		FUNC1(dev, 0x17, 0x66); FUNC0(1);
		FUNC1(dev, 0x24, 0xB6); FUNC0(1);
		FUNC1(dev, 0x05, 0xFC); FUNC0(1);
		break;
	}
}