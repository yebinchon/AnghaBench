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
struct f_uvc_opts {int /*<<< orphan*/  func_inst; } ;
struct config_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config_item*) ; 
 struct f_uvc_opts* FUNC1 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct config_item *item)
{
	struct f_uvc_opts *opts = FUNC1(item);

	FUNC3(FUNC0(item));
	FUNC2(&opts->func_inst);
}