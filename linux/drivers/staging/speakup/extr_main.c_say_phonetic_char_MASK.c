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
typedef  int u16 ;
struct vc_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_NUM ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_NUMBER ; 
 int FUNC1 (struct vc_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * phonetic ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  spk_attr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spk_old_attr ; 
 scalar_t__ spk_pos ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct vc_data *vc)
{
	u16 ch;

	spk_old_attr = spk_attr;
	ch = FUNC1(vc, (u_short *)spk_pos, &spk_attr);
	if (ch <= 0x7f && FUNC2(ch)) {
		ch &= 0x1f;
		FUNC5("%s\n", phonetic[--ch]);
	} else {
		if (ch < 0x100 && FUNC0(ch, B_NUM))
			FUNC5("%s ", FUNC4(MSG_NUMBER));
		FUNC3(ch);
	}
}