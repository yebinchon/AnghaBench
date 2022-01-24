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
typedef  int /*<<< orphan*/  u_short ;
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  u_char ;
struct vc_data {int vc_cols; } ;

/* Variables and functions */
 scalar_t__ SPACE ; 
 scalar_t__* buf ; 
 int /*<<< orphan*/  FUNC0 (struct vc_data*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct vc_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spk_attr ; 
 int /*<<< orphan*/  spk_old_attr ; 
 scalar_t__ spk_pos ; 
 int spk_x ; 

__attribute__((used)) static int FUNC2(struct vc_data *vc)
{
	u_long tmp = spk_pos - (spk_x * 2);
	int i = 0;
	u_char tmp2;

	spk_old_attr = spk_attr;
	spk_attr = FUNC0(vc, (u_short *)spk_pos);
	for (i = 0; i < vc->vc_cols; i++) {
		buf[i] = FUNC1(vc, (u_short *)tmp, &tmp2);
		tmp += 2;
	}
	for (--i; i >= 0; i--)
		if (buf[i] != SPACE)
			break;
	return ++i;
}