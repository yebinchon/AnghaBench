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
typedef  scalar_t__ u_long ;
struct vc_data {scalar_t__ vc_origin; int vc_size_row; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_NO_WINDOW ; 
 int /*<<< orphan*/  FUNC0 (struct vc_data*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int win_bottom ; 
 int win_left ; 
 int win_right ; 
 int win_start ; 
 int win_top ; 

__attribute__((used)) static void FUNC3(struct vc_data *vc)
{
	u_long start, end, from, to;

	if (win_start < 2) {
		FUNC2("%s\n", FUNC1(MSG_NO_WINDOW));
		return;
	}
	start = vc->vc_origin + (win_top * vc->vc_size_row);
	end = vc->vc_origin + (win_bottom * vc->vc_size_row);
	while (start <= end) {
		from = start + (win_left * 2);
		to = start + (win_right * 2);
		FUNC0(vc, from, to, 1);
		start += vc->vc_size_row;
	}
}