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
typedef  int u32 ;
typedef  int u16 ;
struct zd_chip {int /*<<< orphan*/  mutex; } ;
struct aw_pt_bi {int dummy; } ;

/* Variables and functions */
 int BCN_MODE_AP ; 
 int BCN_MODE_IBSS ; 
 int /*<<< orphan*/  CR_BCN_INTERVAL ; 
#define  NL80211_IFTYPE_ADHOC 130 
#define  NL80211_IFTYPE_AP 129 
#define  NL80211_IFTYPE_MESH_POINT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct zd_chip*,struct aw_pt_bi*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct zd_chip*,struct aw_pt_bi*) ; 
 int FUNC4 (struct zd_chip*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct zd_chip *chip, u16 interval,
			       u8 dtim_period, int type)
{
	int r;
	struct aw_pt_bi s;
	u32 b_interval, mode_flag;

	FUNC0(FUNC2(&chip->mutex));

	if (interval > 0) {
		switch (type) {
		case NL80211_IFTYPE_ADHOC:
		case NL80211_IFTYPE_MESH_POINT:
			mode_flag = BCN_MODE_IBSS;
			break;
		case NL80211_IFTYPE_AP:
			mode_flag = BCN_MODE_AP;
			break;
		default:
			mode_flag = 0;
			break;
		}
	} else {
		dtim_period = 0;
		mode_flag = 0;
	}

	b_interval = mode_flag | (dtim_period << 16) | interval;

	r = FUNC4(chip, b_interval, CR_BCN_INTERVAL);
	if (r)
		return r;
	r = FUNC1(chip, &s);
	if (r)
		return r;
	return FUNC3(chip, &s);
}