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
struct TYPE_3__ {int /*<<< orphan*/  yres; int /*<<< orphan*/  xres; } ;
struct TYPE_4__ {TYPE_1__ var; } ;
struct stifb_info {TYPE_2__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stifb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct stifb_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct stifb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct stifb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void 
FUNC4(struct stifb_info *fb, int BufferNumber)
{
	FUNC1(fb, BufferNumber);
	FUNC3(fb, fb->info.var.xres, fb->info.var.yres);
	FUNC0(fb);
	FUNC2(fb);
}