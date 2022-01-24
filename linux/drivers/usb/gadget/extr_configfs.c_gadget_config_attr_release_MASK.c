#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct config_usb_cfg* label; int /*<<< orphan*/  list; int /*<<< orphan*/  functions; } ;
struct config_usb_cfg {TYPE_1__ c; } ;
struct config_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct config_usb_cfg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct config_usb_cfg* FUNC4 (struct config_item*) ; 

__attribute__((used)) static void FUNC5(struct config_item *item)
{
	struct config_usb_cfg *cfg = FUNC4(item);

	FUNC0(!FUNC3(&cfg->c.functions));
	FUNC2(&cfg->c.list);
	FUNC1(cfg->c.label);
	FUNC1(cfg);
}