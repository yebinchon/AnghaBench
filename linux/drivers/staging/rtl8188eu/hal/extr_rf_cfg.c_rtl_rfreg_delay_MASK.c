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
typedef  int u32 ;
struct adapter {int dummy; } ;
typedef  enum rf_radio_path { ____Placeholder_rf_radio_path } rf_radio_path ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct adapter *adapt, enum rf_radio_path rfpath, u32 addr, u32 mask, u32 data)
{
	if (addr == 0xfe) {
		FUNC0(50);
	} else if (addr == 0xfd) {
		FUNC0(5);
	} else if (addr == 0xfc) {
		FUNC0(1);
	} else if (addr == 0xfb) {
		FUNC2(50);
	} else if (addr == 0xfa) {
		FUNC2(5);
	} else if (addr == 0xf9) {
		FUNC2(1);
	} else {
		FUNC1(adapt, rfpath, addr, mask, data);
		FUNC2(1);
	}
}