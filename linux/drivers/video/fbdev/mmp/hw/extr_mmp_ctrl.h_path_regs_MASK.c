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
struct mmp_path {scalar_t__ id; int /*<<< orphan*/  dev; } ;
struct lcd_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PATH_P2 ; 
 scalar_t__ PATH_PN ; 
 scalar_t__ PATH_TV ; 
 scalar_t__ FUNC1 (struct mmp_path*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static inline struct lcd_regs *FUNC3(struct mmp_path *path)
{
	if (path->id == PATH_PN)
		return (struct lcd_regs *)(FUNC1(path) + 0xc0);
	else if (path->id == PATH_TV)
		return (struct lcd_regs *)FUNC1(path);
	else if (path->id == PATH_P2)
		return (struct lcd_regs *)(FUNC1(path) + 0x200);
	else {
		FUNC2(path->dev, "path id %d invalid\n", path->id);
		FUNC0(1);
		return NULL;
	}
}