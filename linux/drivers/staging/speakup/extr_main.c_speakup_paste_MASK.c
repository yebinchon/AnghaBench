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
struct vc_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_MARK_CLEARED ; 
 int /*<<< orphan*/  MSG_PASTE ; 
 scalar_t__ mark_cut_flag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tty ; 

__attribute__((used)) static void FUNC3(struct vc_data *vc)
{
	if (mark_cut_flag) {
		mark_cut_flag = 0;
		FUNC2("%s\n", FUNC1(MSG_MARK_CLEARED));
	} else {
		FUNC2("%s\n", FUNC1(MSG_PASTE));
		FUNC0(tty);
	}
}