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
struct adapter {int /*<<< orphan*/  pnetdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 

void FUNC4(struct adapter *adapter)
{
	/* RT_PMKID_LIST   backupPMKIDList[ NUM_PMKID_CACHE ]; */

	FUNC0(adapter->pnetdev); /*  Do it first for tx broadcast pkt after disconnection issue! */

	FUNC1(adapter);

	FUNC2(adapter);

	/* modify for CONFIG_IEEE80211W, none 11w also can use the same command */
	FUNC3(adapter);
}