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
struct btc_coexist {int stop_coex_dm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btc_coexist*,int,int) ; 

void FUNC1(struct btc_coexist *btcoexist,
				   bool wifi_only)
{
	FUNC0(btcoexist, true, wifi_only);
	btcoexist->stop_coex_dm = false;
}