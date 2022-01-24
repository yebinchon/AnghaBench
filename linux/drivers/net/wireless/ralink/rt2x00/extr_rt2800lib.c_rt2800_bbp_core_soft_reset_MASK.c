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
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBP4_BANDWIDTH ; 
 int FUNC0 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct rt2x00_dev *rt2x00dev,
				       bool set_bw, bool is_ht40)
{
	u8 bbp_val;

	bbp_val = FUNC0(rt2x00dev, 21);
	bbp_val |= 0x1;
	FUNC1(rt2x00dev, 21, bbp_val);
	FUNC3(100, 200);

	if (set_bw) {
		bbp_val = FUNC0(rt2x00dev, 4);
		FUNC2(&bbp_val, BBP4_BANDWIDTH, 2 * is_ht40);
		FUNC1(rt2x00dev, 4, bbp_val);
		FUNC3(100, 200);
	}

	bbp_val = FUNC0(rt2x00dev, 21);
	bbp_val &= (~0x1);
	FUNC1(rt2x00dev, 21, bbp_val);
	FUNC3(100, 200);
}