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
typedef  int /*<<< orphan*/  u8 ;
struct btc_coexist {scalar_t__ manual_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC2 (struct btc_coexist*) ; 

void FUNC3(struct btc_coexist *btcoexist, u8 type)
{
	if (!FUNC0(btcoexist))
		return;

	if (btcoexist->manual_control)
		return;

	FUNC1(btcoexist);

	FUNC2(btcoexist);
}