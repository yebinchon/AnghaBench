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
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int PACKAGE_DEFAULT ; 
 int PACKAGE_QFN68 ; 
 int PACKAGE_TFBGA79 ; 
 int PACKAGE_TFBGA80 ; 
 int PACKAGE_TFBGA90 ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int,int) ; 

__attribute__((used)) static u8 FUNC2(struct ieee80211_hw *hw)
{
	u8 package_type;
	u8 value;

	FUNC1(hw, false, true);
	if (!FUNC0(hw, 0x1FB, &value))
		value = 0;
	FUNC1(hw, false, false);

	switch (value & 0x7) {
	case 0x4:
		package_type = PACKAGE_TFBGA79;
		break;
	case 0x5:
		package_type = PACKAGE_TFBGA90;
		break;
	case 0x6:
		package_type = PACKAGE_QFN68;
		break;
	case 0x7:
		package_type = PACKAGE_TFBGA80;
		break;
	default:
		package_type = PACKAGE_DEFAULT;
		break;
	}

	return package_type;
}