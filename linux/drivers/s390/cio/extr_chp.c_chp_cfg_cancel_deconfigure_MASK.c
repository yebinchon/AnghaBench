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
struct chp_id {int /*<<< orphan*/  id; int /*<<< orphan*/  cssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ cfg_deconfigure ; 
 scalar_t__ FUNC1 (struct chp_id) ; 
 int /*<<< orphan*/  cfg_lock ; 
 int /*<<< orphan*/  cfg_none ; 
 int /*<<< orphan*/  FUNC2 (struct chp_id,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct chp_id chpid)
{
	FUNC0(2, "chp_cfg_cancel:%x.%02x\n", chpid.cssid, chpid.id);
	FUNC3(&cfg_lock);
	if (FUNC1(chpid) == cfg_deconfigure)
		FUNC2(chpid, cfg_none);
	FUNC4(&cfg_lock);
}