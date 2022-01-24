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
typedef  scalar_t__ u8 ;
struct wifi_only_cfg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wifi_only_cfg*,int,int,int) ; 

void FUNC1(struct wifi_only_cfg *wifionlycfg,
				       u8 is_5g)
{
	if (is_5g)
		FUNC0(wifionlycfg, 0xcbc, 0x300, 0x1);
	else
		FUNC0(wifionlycfg, 0xcbc, 0x300, 0x2);
}