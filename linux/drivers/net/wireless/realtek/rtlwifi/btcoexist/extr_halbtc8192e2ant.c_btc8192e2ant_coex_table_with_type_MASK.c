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
struct btc_coexist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btc_coexist*,int,int,int,int,int) ; 

__attribute__((used)) static void FUNC1(struct btc_coexist *btcoexist,
					      bool force_exec, u8 type)
{
	switch (type) {
	case 0:
		FUNC0(btcoexist, force_exec, 0x55555555,
					0x5a5a5a5a, 0xffffff, 0x3);
		break;
	case 1:
		FUNC0(btcoexist, force_exec, 0x5a5a5a5a,
					0x5a5a5a5a, 0xffffff, 0x3);
		break;
	case 2:
		FUNC0(btcoexist, force_exec, 0x55555555,
					0x5ffb5ffb, 0xffffff, 0x3);
		break;
	case 3:
		FUNC0(btcoexist, force_exec, 0xdfffdfff,
					0x5fdb5fdb, 0xffffff, 0x3);
		break;
	case 4:
		FUNC0(btcoexist, force_exec, 0xdfffdfff,
					0x5ffb5ffb, 0xffffff, 0x3);
		break;
	default:
		break;
	}
}