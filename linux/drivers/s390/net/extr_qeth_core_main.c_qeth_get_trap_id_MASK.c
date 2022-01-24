#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sysinfo_3_2_2 {TYPE_2__* vm; int /*<<< orphan*/  lpar_number; } ;
struct sysinfo_2_2_2 {TYPE_2__* vm; int /*<<< orphan*/  lpar_number; } ;
struct qeth_trap_id {int /*<<< orphan*/  vmname; int /*<<< orphan*/  lparnr; int /*<<< orphan*/  devno; int /*<<< orphan*/  ssid; int /*<<< orphan*/  chpid; } ;
struct TYPE_3__ {int /*<<< orphan*/  chpid; } ;
struct qeth_card {TYPE_1__ info; } ;
struct ccw_dev_id {int /*<<< orphan*/  devno; int /*<<< orphan*/  ssid; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ccw_dev_id*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct sysinfo_3_2_2*,int,int,int) ; 

__attribute__((used)) static void FUNC7(struct qeth_card *card, struct qeth_trap_id *tid)
{
	unsigned long info = FUNC4(GFP_KERNEL);
	struct sysinfo_2_2_2 *info222 = (struct sysinfo_2_2_2 *)info;
	struct sysinfo_3_2_2 *info322 = (struct sysinfo_3_2_2 *)info;
	struct ccw_dev_id ccwid;
	int level;

	tid->chpid = card->info.chpid;
	FUNC2(FUNC0(card), &ccwid);
	tid->ssid = ccwid.ssid;
	tid->devno = ccwid.devno;
	if (!info)
		return;
	level = FUNC6(NULL, 0, 0, 0);
	if ((level >= 2) && (FUNC6(info222, 2, 2, 2) == 0))
		tid->lparnr = info222->lpar_number;
	if ((level >= 3) && (FUNC6(info322, 3, 2, 2) == 0)) {
		FUNC1(info322->vm[0].name, sizeof(info322->vm[0].name));
		FUNC5(tid->vmname, info322->vm[0].name, sizeof(tid->vmname));
	}
	FUNC3(info);
	return;
}