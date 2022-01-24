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
struct mipid_device {scalar_t__ enabled; } ;
struct lcd_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mipid_device*) ; 
 struct mipid_device* FUNC1 (struct lcd_panel*) ; 

__attribute__((used)) static void FUNC2(struct lcd_panel *panel)
{
	struct mipid_device *md = FUNC1(panel);

	if (md->enabled)
		FUNC0(md);
}