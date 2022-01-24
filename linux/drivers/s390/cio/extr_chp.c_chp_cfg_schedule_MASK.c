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
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cfg_configure ; 
 int /*<<< orphan*/  cfg_deconfigure ; 
 int /*<<< orphan*/  cfg_lock ; 
 int /*<<< orphan*/  FUNC1 (struct chp_id,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cfg_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct chp_id chpid, int configure)
{
	FUNC0(2, "chp_cfg_sched%x.%02x=%d\n", chpid.cssid, chpid.id,
		      configure);
	FUNC3(&cfg_lock);
	FUNC1(chpid, configure ? cfg_configure : cfg_deconfigure);
	FUNC4(&cfg_lock);
	FUNC2(&cfg_work);
}